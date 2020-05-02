import 'package:flutter/material.dart';
import 'package:peludi_covid/widget/card.dart';
import 'package:peludi_covid/widget/label.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        LabelWidget(label: 'News'),
        CardNews(),
        CardNews(),
        CardNews(),
        CardNews(),
        CardNews(),
        CardNews(),
        CardNews(),
        CardNews(),
      ],
    );
  }
}