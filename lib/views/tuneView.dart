import 'package:flutter/material.dart';
import 'package:tune_app/model/tuneModel.dart';

import '../tuneItem/tuneItem.dart';

class TuneApp extends StatelessWidget {
  const TuneApp({super.key});

  @override
  Widget build(BuildContext context) {
      final List<tuneItem> tunes =const[
      tuneItem(color: Color(0xffF44336), sound: 'note1.wav'),
      tuneItem(color: Color(0xffF89800), sound: 'note2.wav'),
      tuneItem(color: Color(0xffFEEB3B), sound: 'note3.wav'),
      tuneItem(color: Color(0xff4CAF50), sound: 'note4.wav'),
      tuneItem(color: Color(0xff2F9688), sound: 'note5.wav'),
      tuneItem(color: Color(0xff2896F3), sound: 'note6.wav'),
      tuneItem(color: Color(0xff9C27B0), sound: 'note7.wav'),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff253238),
        title: const Text('Tune App',style: TextStyle(color: Colors.white),),
      centerTitle: true,
      ),
      body: Column(
        children:
          tunes.map((e) => tuneModel(tune: e)).toList(),
      ),
    );
  }
}
