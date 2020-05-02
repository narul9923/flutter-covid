import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_icon_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:peludi_covid/widget/card.dart';
import 'package:peludi_covid/widget/label.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  static final List<String> imgSlider = [
    'assets/images/inventaris.png',
    'assets/images/komunigrafik.png',
    'assets/images/porto1.png',
    'assets/images/terimagadai.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        LabelWidget(label: "Status Covid 19"),
        Row(
          children: <Widget>[
            CardWidget(),
            CardWidget(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CardWidget(),
            CardWidget(),
          ],
        ),
        LabelWidget(label: "News"),
        // Container(
        //   height: 250.0,
        //   child: Carousel(
        //     autoplay: true,
        //     indicatorBgPadding: 8.0,
        //     images: [
        //       AssetImage('assets/images/inventaris.png'),
        //       AssetImage('assets/images/komunigrafik.png'),
        //       AssetImage('assets/images/porto1.png'),
        //       AssetImage('assets/images/terimagadai.png'),
        //     ],
        //   ),
        // ),
        CarouselSlider(
          options: CarouselOptions(
            height: 150.0,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0
          ),
          items: imgSlider.map((fileName) {
            return Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  '${fileName}',
                  width: 10000,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
        ),
        LabelWidget(label: "Donasi"),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextWidget(text:"Pantau Perkembangan Donasi",),
              Padding(padding: EdgeInsets.all(5.0)),
              RoundedProgressBar(
                style: RoundedProgressBarStyle(
                  borderWidth: 0, 
                  widthShadow: 0
                ),
                borderRadius: BorderRadius.circular(24),
                percent: 50,
                height: 30,
                childCenter: Text("50%", style: TextStyle(color: Colors.white)),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              TextWidget(text:"Donasi terkumpul Rp. 500.000,- dari Rp. 1.000.000,-",),
              Padding(padding: EdgeInsets.all(5.0)),
              TextWidget(text: "Terimakasih bla bla bla bla bla bla bla blabla bla bla bla bla bla bla bla bla bla bla bla",),
              RaisedButton(
                child: Text("Detail", style: TextStyle(color: Colors.white),),
                color: Colors.blue,
                onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ],
          ), 
        ),
      ],
    );
  }
}