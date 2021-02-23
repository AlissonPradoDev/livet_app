import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_app2/screens/002login.dart';

Future main() async {
  runApp(MaterialApp(
    home: TelaTeste(),
  ));
}

class TelaTeste extends StatefulWidget {
  final String id;
  final String cpf_cnpj;
  final String cashback_group;
  final String email;
  final String pf_pj;
  final String uuid;
  final String token;
  final String name;

  const TelaTeste({Key key, this.id, this.cpf_cnpj, this.cashback_group, this.email, this.pf_pj, this.uuid, this.token, this.name})
      : super(key: key);

  @override
  _TelaTesteState createState() => _TelaTesteState();
}

class _TelaTesteState extends State<TelaTeste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Row(
            children: [Text(widget.id)],
          ),
          Row(
            children: [Text(widget.cpf_cnpj)],
          ),
          Row(
            children: [Text(widget.cashback_group)],
          ),
          Row(
            children: [Text(widget.email)],
          ),
          Row(
            children: [Text(widget.pf_pj)],
          ),
          Row(
            children: [Text(widget.uuid)],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [Container(width: 300, child: Text(widget.token))],
          ),
          Row(
            children: [Text(widget.name)],
          ),
          FlatButton(
            onPressed: () {},
          )
        ],
      )),
    );
  }
}

Future<String> signin(String id) async {
  var numusuario = id;
  var headers = {'Authorization': '$numusuario', 'Content-Type': 'application/json'};
  var request = http.Request('GET', Uri.parse('http://35.247.210.174:3003/users/find'));
  request.body = '''{\r\n    "field":"id",\r\n    "value":"$numusuario"\r\n}''';
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}

Future<String> logando(String docs, String senha) async {
  var password = senha;
  var doc = docs;
  var headers = {
    'Content-Type': 'application/json',
    'Cookie':
        'livet-session=eyJqd3QiOiJleUpoYkdjaU9pSklVekkxTmlJc0luUjVjQ0k2SWtwWFZDSjkuZXlKcFpDSTZJalV3Tm1OaFkyUTNMVFUwTVRndE5HUmxOQzFpTm1FMUxXVTFZVGhoT0RoaU1ERmhNU0lzSW1WdFlXbHNJam9pZEdWemRHVXRjR1pBWjIxaGFXd3VZMjl0SWl3aWFXRjBJam94TmpFek5USXdNelkyZlEubHp3ZHdWWUZvZDF1STV0NDlveTNFcERFa3g2dGFpakIyb0NfTkdmaUV2YyJ9; livet-session.sig=7z7fhgczjOcQOk3TSbQnrHUNDr0'
  };
  var request = http.Request('POST', Uri.parse('http://35.247.210.174:3003/users/signin'));
  request.body = '''{\r\n    "cpf_cnpj":"$doc",\r\n    "password":"$password"\r\n}''';
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final respStr = await response.stream.bytesToString();
    var dados = json.decode(respStr);
    return dados['user']['id'];

    //print(dados);
  } else {
    print(response.reasonPhrase);
  }
}
