import 'package:flutter/material.dart';
import 'package:tunes_player/models/tune_model.dart';
import 'package:tunes_player/widgets/tune_item.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});

  final List<TuneModel> tunes = const[
    TuneModel(
        color:Color(0xfff44336),
        sound: 'assets/note1.wav',
    ),
    TuneModel(
        color: Color(0xfff89800),
        sound: 'assets/note2.wav',
    ),
    TuneModel(
        color: Color(0xfffeeb3b),
        sound: 'assets/note3.wav',
    ),
    TuneModel(
        color:Color(0xff4caf50),
        sound: 'assets/note4.wav',
    ),
    TuneModel(
        color: Color(0xff2f9688),
        sound: 'assets/note5.wav',
    ),
    TuneModel(
        color: Color(0xff2896f3),
        sound: 'assets/note6.wav',
    ),
    TuneModel(
        color: Color(0xff9c27b0),
        sound: 'assets/note7.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff253238),
        foregroundColor: Colors.white,
        title: Text('Flutter Tune'),
        centerTitle: true,
      ),
      body: Column(
        children: tunes.map(
                (e)=> TuneItem(tune: e),
        ).toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItem(){
  //   List<TuneItem> items = [];
  //   for(var color in tuneColor){
  //     items.add(TuneItem(color: color));
  //   }
  //   return items ;
  // }
}
