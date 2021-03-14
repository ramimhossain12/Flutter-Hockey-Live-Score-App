import 'package:flutter/material.dart';
import 'package:sccore_app/api_manager.dart';
import 'package:sccore_app/pagerbody.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SoccerApp(),
    );
  }
}

class SoccerApp extends StatefulWidget {
  @override
  _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "SoccerDashBoard",
            style: TextStyle(color: Colors.white),
        ),
      ),

      body: FutureBuilder(
      future: SoccerApi().getAllMatches(),
      builder: (context,snapshot){

        if (snapshot.hasData) {
          print((snapshot.data).length);
          return PageBody(snapshot.data);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },),
    );
  }
}
