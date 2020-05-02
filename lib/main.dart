import 'package:flutter/material.dart';
import 'package:peludi_covid/screen/home.dart';
import 'package:peludi_covid/services/appState.dart';
import 'package:peludi_covid/style/AppTheme.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider<AppStateNotifier>(
    builder: (context) => AppStateNotifier(),
    child: MyApp(),
  )
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child) {
        return MaterialApp(
          title: 'Peduli Covid',
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          // ),
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: Home(),
          themeMode: appState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        );
      },
    );
  }
}
