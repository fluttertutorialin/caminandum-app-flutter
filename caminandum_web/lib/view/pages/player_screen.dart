import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:get/get.dart';
import 'package:janus_client/JanusClient.dart';
import 'package:just_audio/just_audio.dart';
import 'dart:math' show pi;
// import 'package:volume/volume.dart';

import 'package:caminandum_web/controllers/radioController.dart';
import 'package:caminandum_web/services/streamService/conf.dart';
import 'package:caminandum_web/view/widgets/blob.dart';
import 'package:caminandum_web/view/widgets/menuWidget.dart';
import 'package:caminandum_web/view/widgets/notificationWidget.dart';
import 'package:caminandum_web/view/widgets/shareIconWidgets.dart';
import 'package:caminandum_web/view/widgets/volumeSliderWidget.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen>
    with TickerProviderStateMixin {
  RadioController _radioController = Get.find<RadioController>();
  double sliderValue = 8.0;
  late JanusClient j;
  late RestJanusTransport rest;
  late WebSocketJanusTransport ws;
  late JanusSession session;
  late JanusPlugin plugin;

  Map<int, JanusPlugin> subscriberHandles = {};
  var song_data;

  RTCVideoRenderer _remoteRenderer = new RTCVideoRenderer();

  List<dynamic> streams = [];
  late int selectedStreamId;
  bool _loader = true;
  late bool songPlaying;
  late StateSetter _setState;

  bool isLoading = false;

  getStreamListing() {
    var body = {"request": "list"};
    plugin.send(
      data: body,
    );
  }

  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    await _remoteRenderer.initialize();
  }

  playsong() async {
    // setState(() {
    //   songPlaying ? songPlaying = false : songPlaying = true;
    // });
    _radioController.setPlay();
    if (!_radioController.isPlaying) {
      _scaleController.reverse();
    } else {
      _scaleController.forward();
    }
    if (_radioController.isPlaying) {
      // initJanusClient();
      _radioController.setPlayerURL();
      _radioController.player.play();
    } else {
      // plugin.send(
      //   data: {"request": "stop"},
      // );
      await _radioController.player.pause();
    }
  }

  initJanusClient() async {
    setState(() {
      rest = RestJanusTransport(url: servermap['janus_rest']);
      ws = WebSocketJanusTransport(url: servermap['janus_ws']);
      j = JanusClient(transport: ws, iceServers: [
        RTCIceServer(
            url: "stun:stun.voip.eutelia.it:3478", username: "", credential: "")
      ]);
    });
    session = await j.createSession();
    print(session.sessionId);
    plugin = await session.attach(JanusPlugins.STREAMING);
    await this.getStreamListing();
    print('got handleId');
    print(plugin.handleId);
    plugin.remoteStream!.listen((event) {
      print(event);
      print("======");
      if (event != null) {
        _remoteRenderer.srcObject = event;
      }
    });
    plugin.messages!.listen((even) async {
      print('got onmsg');
      print(even);
      var pluginData = even.event['plugindata'];
      if (pluginData != null) {
        var data = pluginData['data'];
        if (data != null) {
          var msg = data;
          if (msg['streaming'] != null && msg['result'] != null) {
            if (msg['streaming'] == 'event' &&
                msg['result']['status'] == 'stopping') {
              await this.destroy();
            }
          }
          if (data['streaming'] == 'list') {
            song_data = data;
            if (_radioController.isPlaying) {
              print("==============");
              print(song_data['list'][0]['id']);
              plugin.send(data: {
                "request": "watch",
                "id": song_data['list'][0]['id'],
              });
            }
          }
        }
      }

      if (even.jsep != null) {
        debugPrint("Handling SDP as well..." + even.jsep.toString());
        await plugin.handleRemoteJsep(even.jsep!);
        RTCSessionDescription answer = await plugin.createAnswer();
        plugin.send(data: {"request": "start"}, jsep: answer);
        // Navigator.of(context).pop();
        setState(() {
          _loader = false;
        });
      }
    });
  }

  Future<void> cleanUpAndBack() async {
    plugin.send(data: {"request": "stop"});
  }

  destroy() async {
    await plugin.dispose();
    session.dispose();
    // Navigator.of(context).pop();
  }

  static const _kToggleDuration = Duration(milliseconds: 300);
  static const _kRotationDuration = Duration(seconds: 5);

  bool isPlaying = false;

  // rotation and scale animations
  late AnimationController _rotationController;
  late AnimationController _scaleController;
  double _rotation = 0;
  double _scale = 0.85;

  bool get _showWaves => !_scaleController.isDismissed;

  void _updateRotation() => _rotation = _rotationController.value * 2 * pi;
  void _updateScale() => _scale = (_scaleController.value * 0.2) + 0.85;

  @override
  void initState() {
    _rotationController =
        AnimationController(vsync: this, duration: _kRotationDuration)
          ..addListener(() => setState(_updateRotation))
          ..repeat();

    _scaleController =
        AnimationController(vsync: this, duration: _kToggleDuration)
          ..addListener(() => setState(_updateScale));
    super.initState();
    if (_radioController.isPlaying) {
      _scaleController.forward();
    }
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = _radioController.isDarkMode;
    var textColor = _radioController.textColor;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        leading: MenuWidget(),
        title: Text(
          'caminandum Radio',
          style: TextStyle(color: textColor),
        ),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            //Share Icons widgets
            ShareIconWidgets(),
            //Song Logo Image
            Center(
              child: SizedBox(
                height: 130,
                width: 130,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 48, minHeight: 48),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      if (_showWaves) ...[
                        Blob(
                            color: Color(0xffF2CDAC),
                            scale: _scale,
                            rotation: _rotation),
                        Blob(
                            color: Color(0xffD95204),
                            scale: _scale,
                            rotation: _rotation * 2 - 30),
                        Blob(
                            color: Color(0xffF29D52),
                            scale: _scale,
                            rotation: _rotation * 3 - 45),
                      ],
                      Obx(() {
                        return _radioController.songsDetail.value.cover == ""
                            ? Container(
                                height: 100,
                                width: 100,
                                child: CircularProgressIndicator())
                            : Center(
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Colors.white,
                                  backgroundImage: NetworkImage(
                                    _radioController.songsDetail.value.cover,
                                  ),
                                ),
                              );
                      }),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              height: 100,
              child: _radioController.eventList.length > 0
                  ? CarouselSlider.builder(
                      itemCount: _radioController.eventList.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //StreamingTime
                            Padding(
                              padding:
                                  const EdgeInsets.all(8.0).copyWith(bottom: 4),
                              child: Center(
                                child: Text(
                                  "${_radioController.eventList[itemIndex].start} - ${_radioController.eventList[itemIndex].end}",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: textColor,
                                  ),
                                ),
                              ),
                            ),
                            //Name of Radio
                            Padding(
                              padding: const EdgeInsets.all(8.0)
                                  .copyWith(top: 0, bottom: 4),
                              child: Center(
                                child: Text(
                                  "${_radioController.eventList[itemIndex].title}",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: textColor,
                                  ),
                                ),
                              ),
                            ),

                            //Name of Auther
                            Padding(
                              padding: const EdgeInsets.all(8.0)
                                  .copyWith(top: 0, bottom: 4),
                              child: Center(
                                child: Text(
                                  "${_radioController.eventList[itemIndex].city}",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: textColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                      ),
                    )
                  : Center(
                      child: Container(
                        height: 50,
                        child: Text(
                          "",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * .05,
            // ),
            //Artist Name
            Obx(() {
              return Center(
                child: Text(
                  _radioController.songsDetail.value.artist,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            }),

            SizedBox(
              height: 5,
            ),

            //Name of the song
            Obx(() {
              return Center(
                child: Text(
                  _radioController.songsDetail.value.title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            }),

            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),

            //Play Pause Button

            InkWell(
              onTap: () {
                playsong();
              },
              child: Icon(
                _radioController.isPlaying ? Icons.pause : Icons.play_arrow,
                color: Color(0XFFBE0C1C),
                size: 80,
              ),
            ),

            //Volume Slider
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: VolumeSliderWidet(_radioController.player),
            ),

            //Notification Widget
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: NotificationWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
