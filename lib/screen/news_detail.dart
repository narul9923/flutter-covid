import 'package:flutter/material.dart';
import 'package:peludi_covid/widget/label.dart';

class NewsDetail extends StatefulWidget {
  @override
  _NewsDetailState createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Detail", style: TextStyle(color: Theme.of(context).textTheme.title.color),),
      ),
      body: Column(
        children: <Widget>[
          LabelWidget(label: 'Title'),
          Image.asset('assets/images/inventaris.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 15.0),
            child: TextWidget(text: "Bla bla bla bla bla bla Bla bla bla bla bla bla Bla bla bla bla bla bla Bla bla bla bla bla blaBla bla bla bla bla blaBla bla bla bla bla bla Bla bla bla bla bla bla",),
          )
        ],
      ),
    );
  }
}