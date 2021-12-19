import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MaterialApp(
    localizationsDelegates: [
      GlobalCupertinoLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: [
      Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
    ],
    locale: Locale("fa", "IR"),
    home: Home(),
));

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue[900],
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'خانه'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'درخواست پزشک'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'وضعیت'),
        ],
      ),
    );
  }

}