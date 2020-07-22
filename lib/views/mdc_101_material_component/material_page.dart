import 'package:flutter/material.dart';

class MaterialPage101 extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material component 101'),
          leading: IconButton(
              icon: Icon(Icons.local_see),
              onPressed: () {
                AlertDialog(
                  title: Text('Warning'),
                  content: Text('This my dialog'),
                );
              }),
        ),
        body: SafeArea(
            child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(
              height: 80.0,
            ),
            head(),
            SizedBox(
              height: 120.0,
            ),
            TextField(
              decoration: InputDecoration(filled: true, labelText: 'username'),
              controller: _usernameController,
            ),
            SizedBox(
              height: 12.0,
            ),
            TextField(
              decoration: InputDecoration(filled: true, labelText: 'password'),
              controller: _passwordController,
              obscureText: true,
            ),
            actionButtons(),
          ],
        )));
  }

  ButtonBar actionButtons() {
    return ButtonBar(
      children: <Widget>[
        FlatButton(
            onPressed: () {
              _usernameController.clear();
              _passwordController.clear();
            },
            child: Text('CLEAR')),
        RaisedButton(
          onPressed: () {},
          child: Text('NEXT'),
        )
      ],
    );
  }

  Column head() {
    return Column(
      children: <Widget>[
        Icon(Icons.local_gas_station),
        SizedBox(
          height: 16.0,
        ),
        Text('SHRINE')
      ],
    );
  }
}
