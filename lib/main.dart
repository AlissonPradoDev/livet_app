import 'package:flutter/material.dart';
import 'package:livet_app/screens/propaganda_01.dart';


void main() {
  runApp(MaterialApp(
    home: Splash(),
    debugShowCheckedModeBanner: true,
  ));


}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context)=> Propaganda01())
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
      FractionallySizedBox(
      widthFactor: 0.7,
        heightFactor: 0.3,
        child: Container(
          color: Colors.green,
        ),
      )
            ],
          )
        ],
      )
    );

  }
}