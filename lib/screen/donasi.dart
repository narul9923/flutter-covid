import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:peludi_covid/widget/donatur.dart';
import 'package:peludi_covid/widget/label.dart';

class Donasi extends StatefulWidget {
  @override
  _DonasiState createState() => _DonasiState();
}

class _DonasiState extends State<Donasi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        LabelWidget(label: 'Donasi'),
        Image.asset('assets/images/komunigrafik.png'),
        Padding(
          padding: EdgeInsets.all(10),
          child: RoundedProgressBar(
            style: RoundedProgressBarStyle(
              borderWidth: 0, 
              widthShadow: 0
            ),
            borderRadius: BorderRadius.circular(24),
            percent: 50,
            height: 30,
            childCenter: Text("50%", style: TextStyle(color: Colors.white)),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),),
        TextWidget(text: "Donasi terkumpul .... dari ...."),
        Donatur(),
        Donatur(),
        Donatur(),
        Donatur(),
        Donatur(),
        Donatur(),
        Donatur(),
        Donatur(),
        Donatur(),
      ],
    );
  }
}