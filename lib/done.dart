// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import './pagedesc.dart';

// ignore: use_key_in_widget_constructors
class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          Container(
            child: Image.network('images/check.png', height: 200),
            padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
          ),
          Container(
            child: Text(
              'Permintaan anda berhasil di proses',
              style: TextStyle(fontSize: 24.0),
            ),
          )
        ]),
      ),
    );
  }
}
