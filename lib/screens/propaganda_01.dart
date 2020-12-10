import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Propaganda01(),
    debugShowCheckedModeBanner: false,
  ));
}

class Propaganda01 extends StatefulWidget {
  @override
  _Propaganda01State createState() => _Propaganda01State();
}

class _Propaganda01State extends State<Propaganda01> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((_){
      //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Propaganda02()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network("https://portaldepiumhi.com.br/site/wp-content/uploads/2020/11/destaque001.png",
        loadingBuilder: (context,child, progress){
          return progress == null
              ? child
              : LinearProgressIndicator(backgroundColor: Colors.black,);
        },
        fit: BoxFit.cover,
        height: 1920,
        width: 1080,),
    );

  }
}