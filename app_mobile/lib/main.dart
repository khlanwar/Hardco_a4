import 'package:flutter/material.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff79B4B7),
        body: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Column(
            children: [
              Center(child: Image.asset('assets/camera_undraw.png')),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Selamat Datang',
                      style: titleTextStyle,
                    ),
                  ),
                  Text(
                    'Di Aplikasi Deteksi Kecepatan Aliran Air',
                    style: buttonTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Text('Disini Button Cara Penggunaan'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Text('Disini Button Masuk halaman rekam'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
