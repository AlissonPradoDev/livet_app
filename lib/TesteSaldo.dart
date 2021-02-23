import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_app2/screens/002login.dart';

class TesteSaldo extends StatefulWidget {
  final String id;
  final String cpf_cnpj;
  final String cashback_group;
  final String email;
  final String pf_pj;
  final String uuid;
  final String token;
  final String name;

  const TesteSaldo({Key key, this.id, this.cpf_cnpj, this.cashback_group, this.email, this.pf_pj, this.uuid, this.token, this.name})
      : super(key: key);

  Future main() async {
    runApp(MaterialApp(
      home: TesteSaldo(),
    ));
  }

  Future<String> saldoConta(String saldo) async {
    var chave =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjUwNmNhY2Q3LTU0MTgtNGRlNC1iNmE1LWU1YThhODhiMDFhMSIsImVtYWlsIjoidGVzdGUtcGZAZ21haWwuY29tIiwiaWF0IjoxNjEzNjg0MjgxfQ.B5q1qJo2FrhrP0OQS1HrueJRold43BJZCQCO48ziWEs';
    var headers = {
      'Authorization': chave,
      'Cookie':
          'livet-session=eyJqd3QiOiJleUpoYkdjaU9pSklVekkxTmlJc0luUjVjQ0k2SWtwWFZDSjkuZXlKcFpDSTZJalV3Tm1OaFkyUTNMVFUwTVRndE5HUmxOQzFpTm1FMUxXVTFZVGhoT0RoaU1ERmhNU0lzSW1WdFlXbHNJam9pZEdWemRHVXRjR1pBWjIxaGFXd3VZMjl0SWl3aWFXRjBJam94TmpFek9UTXpOelF5ZlEuaFRqN05ycEVBMHVVeklUQl8zLV92bkNNYlA2aGtoZlR6X2tBYVR3bUNuOCJ9; livet-session.sig=Nel6NtY8Jkn6vOxtsSzb9A0WlS4'
    };
    var request = http.Request('GET', Uri.parse('http://35.247.210.174:3003/transactions/extract'));
    request.body = '''''';
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  @override
  _TesteSaldoState createState() => _TesteSaldoState();
}

class _TesteSaldoState extends State<TesteSaldo> {
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
