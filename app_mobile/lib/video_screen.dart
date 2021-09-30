import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class VideoScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<VideoScreen> {
  int angka = 0;

  void tekanTombolTambah() {
    setState(() {
      angka = angka + 1;
    });
  }

  void tekanTombolKurang() {
    setState(() {
      angka = angka - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                angka.toString(),
                style: TextStyle(fontSize: 40 + angka.toDouble()),
              ),
              CupertinoButton.filled(
                  child: Text("Naikkan Bilangan"),
                  padding: EdgeInsets.all(10),
                  onPressed: tekanTombolTambah),
              CupertinoButton.filled(
                  child: Text("Turunkan Bilangan"),
                  padding: EdgeInsets.all(10),
                  onPressed: tekanTombolKurang),
            ],
          ),
        ),
      ),
    );
  }
}
