import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'theme.dart';

class GuideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Panduan'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              SizedBox(height: 16.0),
              Text(
                " 1. Alat yang perlu disiapkan :\n - Benda yang mengapung diatas sungai (contoh : botol, plastik, dll) \n - Tali untuk mengikat benda",
                style: subTitleTextStyle,
              ),
              SizedBox(height: 8.0),
              Text(
                " 2. Lemparkan benda yang sudah diikat dengan tali tersebut ke arah aliran sungai",
                style: subTitleTextStyle,
              ),
              SizedBox(height: 8.0),
              Text(
                " 3. Rekamlah benda tersebut selama mengapung diatas sungai dari sisi kiri hingga sisi kanan kamera atau sebaliknya seperti contoh gambar dibawah ini",
                style: subTitleTextStyle,
              ),
              Center(child: Image.asset('assets/angle.png')),
              SizedBox(height: 8.0),
              Text(
                " 4. Pastikan jarak benda ke kamera kurang lebih sejauh 3 meter",
                style: subTitleTextStyle,
              ),
              SizedBox(height: 8.0),
              Text(
                " 5. Masukkan hasil rekaman tersebut kedalam aplikasi ini",
                style: subTitleTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
