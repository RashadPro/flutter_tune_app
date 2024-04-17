import 'package:flutter/material.dart';
import 'package:tune_app/Model/Tune_model.dart';
import 'package:tune_app/components/tune_item.dart';

class TuneView extends StatelessWidget {
  TuneView({super.key});

  final List<ColorItem> items = [
    ColorItem(
      color: Colors.red,
      sound: "note1.wav",
    ),
    ColorItem(
      color: Colors.orange,
      sound: "note2.wav",
    ),
    ColorItem(
      color: Colors.yellow,
      sound: "note3.wav",
    ),
    ColorItem(
      color: Colors.green,
      sound: "note4.wav",
    ),
    ColorItem(
      color: Colors.greenAccent,
      sound: "note5.wav",
    ),
    ColorItem(
      color: Colors.blue,
      sound: "note6.wav",
    ),
    ColorItem(
      color: Colors.purple,
      sound: "note7.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff26313A),
        title: const Text(
          "Flutter Tuddne",
        ),
      ),
      body: Column(
        children: getList(items),
      ),
    );
  }
}

List<Widget> getList(List<ColorItem> item) {
  List<Widget> itemList = [];

  for (int i = 0; i < item.length; i++) {
    itemList.add(
      TuneItem(
        colorItem: item[i],
      ),
    );
  }
  return itemList;
}
