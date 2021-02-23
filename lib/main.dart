import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/screens/001abertura02.dart';
import 'package:flutter_app2/screens/splash_abertura.dart';

void main() {
  runApp(MaterialApp(
    home: Abertura(),
  ));
}

class Abertura extends StatefulWidget {
  @override
  _AberturaState createState() => _AberturaState();
}

class _AberturaState extends State<Abertura> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(""), fit: BoxFit.cover)),
        child: ListView(padding: EdgeInsets.all(0), children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 400,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Image.asset(
                              "img/balde.gif",
                              fit: BoxFit.cover,
                            ))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: 405.0,
                        color: Colors.transparent,
                        child: Expanded(
                          flex: 10,
                          child: new Container(
                              decoration: new BoxDecoration(
                                  color: Color.fromARGB(255, 166, 214, 217),
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(40.0),
                                    topRight: const Radius.circular(40.0),
                                  )),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                                            child: Container(
                                              width: 300.0,
                                              child: Text(
                                                "Sua Plantação já começou.",
                                                style: TextStyle(
                                                    color: Color.fromARGB(255, 22, 37, 73), fontSize: 28, fontWeight: FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                            child: Container(
                                              width: 300.0,
                                              child: Text(
                                                "Acesse seu app e cultive sua plantação, afinal o crescimento dela depende de você.",
                                                style: TextStyle(color: Color.fromARGB(255, 22, 37, 73), fontSize: 16),
                                                textAlign: TextAlign.center,
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                            child: Container(
                                              color: Colors.white,
                                              height: 10,
                                              width: 75,
                                            )),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                          child: Container(
                                            height: 42,
                                            width: 200,
                                            child: RaisedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => Abertura02()));
                                              },
                                              shape: new RoundedRectangleBorder(
                                                  borderRadius: new BorderRadius.circular(22.0),
                                                  side: BorderSide(color: Color.fromARGB(255, 34, 153, 149))),
                                              child: Text(
                                                "AVANÇAR",
                                                style: TextStyle(color: Colors.white, fontSize: 18),
                                              ),
                                              color: Color.fromARGB(255, 34, 153, 149),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        )),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
