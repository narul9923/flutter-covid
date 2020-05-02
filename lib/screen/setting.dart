import 'package:flutter/material.dart';
import 'package:peludi_covid/screen/login.dart';
import 'package:peludi_covid/services/appState.dart';
import 'package:peludi_covid/widget/label.dart';
import 'package:provider/provider.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        LabelWidget(label: 'Setting'),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Dark Mode',
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                  ),
                  Switch(
                    value: Provider.of<AppStateNotifier>(context).isDarkMode,
                    onChanged: (boolVal) {
                      Provider.of<AppStateNotifier>(context).updateTheme(boolVal);
                    },
                  )
                ],
              ),
              // Row(
              //   children: <Widget>[
              //     Expanded(
              //       child: Text(
              //         'Akun',
              //         style: Theme.of(context).textTheme.subtitle,
              //       ),
              //     ),
              //     FlatButton(
              //       child: Text("Tambah", style: Theme.of(context).textTheme.subtitle,),
              //       onPressed: (){
              //         Navigator.push(
              //           context, 
              //           MaterialPageRoute(builder: (context) => LoginPage()),
              //         );
              //       },
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ],
    );
  }
}