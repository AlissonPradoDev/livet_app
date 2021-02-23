import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: QrScanner(),
  ));
}

class QrScanner extends StatefulWidget {
  @override
  _QrScannerState createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/fundo_verde.png"), fit: BoxFit.cover)),
        child: ListView(padding: EdgeInsets.all(8), children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Image.asset(
                          "img/icones/back-icon.png",
                        )),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                    decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0),
                          bottomLeft: const Radius.circular(40.0),
                          bottomRight: const Radius.circular(40.0),
                        )),
                    width: 370.0,
                    height: 510.0,
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                            child: Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                                      child: Image.asset(""),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 190.0,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Text(
                                              "",
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 34, 153, 149),
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ))),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Container(
                                  child: Text(
                                    "Gere seu QR Code",
                                    style: TextStyle(color: Color.fromARGB(255, 22, 37, 73), fontSize: 22.0, fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(
                                  child: Text(
                                    "Pulvinar pellentesque habitant \n         tristique senectus et.",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 22, 37, 73),
                                      fontSize: 14.0,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(width: 250, child: Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0), child: Text("teste"))),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 240,
                                child: RaisedButton(
                                  onPressed: () {
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) => GerarQRCode()));
                                  },
                                  shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(22.0),
                                      side: BorderSide(color: Color.fromARGB(255, 34, 153, 149))),
                                  child: Text(
                                    "GERAR QR CODE",
                                    style: TextStyle(color: Colors.white, fontSize: 14),
                                  ),
                                  color: Color.fromARGB(255, 34, 153, 149),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              )
            ],
          )
        ]),
      ),
      bottomNavigationBar: new Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: 405.0,
          color: Color.fromARGB(255, 216, 234, 234),
          child: Expanded(
            flex: 1,
            child: new Container(
                decoration: new BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
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
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                              child: Container(
                                width: 400.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        FlatButton(
                                          onPressed: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (context) => Principal()));
                                          },
                                          child: Image.asset("img/icones/icon_home.png"),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        FlatButton(
                                          onPressed: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (context) => PesquiseLojas()));
                                          },
                                          child: Image.asset("img/icones/icon_explore.png"),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        FlatButton(
                                          onPressed: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (context) => HomePerfil()));
                                          },
                                          child: Image.asset("img/icones/icon_plus.png"),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        )
                      ],
                    ),
                  ],
                )),
          )),
    );
  }
}

void _onsucess() {
  BuildContext context;
  //Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Motorista()));
}

void _onfail() {}
