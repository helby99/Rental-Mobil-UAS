// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:project/done.dart';
import './listmobil.dart';

class PageDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Kendaraan'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image.network(
                'images/mobilio.png',
                height: 250,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('Honda Mobilio',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            DataTable(
              columns: [
                DataColumn(label: Text('Fasilitas')),
                DataColumn(label: Text('Waktu Sewa')),
                DataColumn(label: Text('Harga')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Fuel, 6 seat, P3K, Charger, Audio, AC')),
                  DataCell(Text('12 jam')),
                  DataCell(Text('Rp.300,000')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fuel, 6 seat, P3K, Charger, Audio, AC')),
                  DataCell(Text('Full Day')),
                  DataCell(Text('Rp.500,000')),
                ]),
              ],
            ),
            Container(
              margin: EdgeInsets.all(25),
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Text(
                  'Sewa Sekarang',
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  _nextpage(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _nextpage(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => Success()));
}
