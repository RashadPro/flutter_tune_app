import 'package:flutter/material.dart';
import 'package:tune_app/Model/Tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.colorItem});
  final ColorItem colorItem;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          colorItem.playsound();
        },
        child: Container(
          color: colorItem.color,
        ),
      ),
    );
  }
}
