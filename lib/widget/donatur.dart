import 'package:flutter/material.dart';
import 'package:peludi_covid/widget/label.dart';

class Donatur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage('http://donasi.kalavastudio.com/img/terimakasih.086caead.jpeg'),
              ),
              Padding(
                padding: EdgeInsets.only(left:15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextWidget(text: 'Nama Donatur'),
                    TextWidget(text: 'Rp. 500.000,-'),
                  ],
                ),
              ),              
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(height: 3.0, color: Theme.of(context).textTheme.subtitle.color,),
          ),
        ],
      ),
    );
  }
}