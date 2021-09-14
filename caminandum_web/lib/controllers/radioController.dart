import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_client_sse/flutter_client_sse.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:just_audio/just_audio.dart';

import '/model/songDetails.dart';
import '/services/streamService/streamService.dart';
import '/model/eventItem.dart';

class RadioController extends GetxController {
  var songsDetail = Rx<SongsDetails>(SongsDetails());
  var isDarkMode = false;
  var textColor;
  var eventList = <EventItem>[];
  bool isPlaying = false;
  final player = AudioPlayer();
  @override
  onInit() async {
    super.onInit();
    var brightness = SchedulerBinding.instance!.window.platformBrightness;
    isDarkMode = brightness == Brightness.dark;
    textColor = isDarkMode ? Colors.white : Colors.black;
    setPlayerURL();
    update();
    var url = "https://api.caminandum.com/subscribe/caminandum-radio-songs";
    var token = '';

    // SSEClient.subscribeToSSE(url, token).listen((event) {
    //   print('Id: ' + event.id!);
    //   print('Event: ' + event.event!);
    //   print('Data: ' + event.data!);

    //   var newSong = new SongsDetails();
    //   var data = jsonDecode(event.data!);
    //   print(data);
    //   newSong.cover = data["cover"];
    //   newSong.id = data['id'].toString();
    //   newSong.title = data['title'];
    //   newSong.artist = data['artist'];
    //   this.songsDetail.value = newSong;
    // });

    Timer.periodic(Duration(seconds: 2), (Timer t) async {
      songsDetail.value = await StreamService().getSongName();
    });

    eventList = await StreamService().getEvent();

    update();
  }

  setPlay() {
    isPlaying ? isPlaying = false : isPlaying = true;
    update();
  }

  setPlayerURL() {
    player.setUrl("https://listen.radioking.com/radio/410041/stream/462652");
    update();
  }
}
