import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  final String label;

  LabelWidget({this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.title.color
            ),
          ),
          Divider(
            height: 4.0,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final text;

  TextWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Theme.of(context).textTheme.title.color,
        fontSize: 16.0
      ),
    );
  }
}