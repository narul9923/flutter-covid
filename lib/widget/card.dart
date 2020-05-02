import 'package:flutter/material.dart';
import 'package:peludi_covid/screen/news_detail.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 6.0,
      ),
      child: new Stack(
        children: <Widget>[
          Container(
            height: 124.0,
            width: 165.0,
            margin: new EdgeInsets.only(left: 2.0),
            decoration: new BoxDecoration(
              color: new Color(0xFF333366),
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              boxShadow: <BoxShadow>[
                new BoxShadow(  
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: new Offset(0.0, 10.0),
                ),
              ],
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              title: Text(
                "Kasus Positif",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0
                ),
              ),
              subtitle: Column(
                children: <Widget>[
                  Divider(height: 3.0, color: Colors.white,),
                  // Text(
                  //   "Kasus Positif",
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 24.0
                  //   ),
                  // ),
                  Icon(
                    Icons.recent_actors,
                    color: Colors.white,
                    size: 60.0,
                  ),
                  Text(
                    "120.000",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          // Text("asdas"),
        ],
      )
    );
  }
}

class CardNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 6.0,
      ),
      child: new Stack(
        children: <Widget>[
          Container(
            height: 204.0,
            width: 340.0,
            margin: new EdgeInsets.only(left: 2.0),
            decoration: new BoxDecoration(
              color: new Color(0xFF333366),
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              boxShadow: <BoxShadow>[
                new BoxShadow(  
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: new Offset(0.0, 10.0),
                ),
              ],
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              title: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "News",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Divider(height: 3.0, color: Colors.white,),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text(
                    "Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  FlatButton(
                    child: Text('Detail', style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetail()));
                    },
                    color: Colors.blue[200],
                  )
                ],
              ),
            ),
          ),
          // Text("asdas"),
        ],
      )
    );
  }
}