import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("Profile"),
                elevation: 0
            ),
            drawer: Drawer(),
            backgroundColor: Colors.blue,
            body: Center()
        )
    );
  }
}


// DB:47:4F:32:47:ED:E3:86:93:49:00:88:45:7C:A9:FF:83:48:14:01