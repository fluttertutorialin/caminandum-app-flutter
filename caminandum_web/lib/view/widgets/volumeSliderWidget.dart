import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:perfect_volume_control/perfect_volume_control.dart';

class VolumeSliderWidet extends StatefulWidget {
  final AudioPlayer player;

  const VolumeSliderWidet(this.player);

  @override
  _VolumeSliderWidetState createState() => _VolumeSliderWidetState();
}

class _VolumeSliderWidetState extends State<VolumeSliderWidet> {
  late double currentVolume = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getVolum();
    widget.player.setVolume(0.5);
    currentVolume = 0.5;
  }

  setVolum(volume) async {
    widget.player.setVolume(volume);
    // await PerfectVolumeControl.setVolume(volume);
  }

  getVolum() async {
    currentVolume = await PerfectVolumeControl.getVolume();
    print(currentVolume);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.volume_down,
          size: 20,
          color: Color(0XFFBE0C1C),
        ),
        Container(
          height: 100,
          width: ((MediaQuery.of(context).size.width) - 40) * 0.80,
          child: CupertinoSlider(
            value: currentVolume,
            max: 1,
            min: 0,
            onChanged: (changedValue) async {
              setState(() {
                currentVolume = changedValue;
              });
            },
            onChangeEnd: (double volum) {
              print(volum);
              // PerfectVolumeControl.hideUI = true;
              setVolum(volum);
            },
          ),
        ),
        Icon(
          Icons.volume_up,
          size: 20,
          color: Color(0XFFBE0C1C),
        ),
      ],
    );
  }
}
