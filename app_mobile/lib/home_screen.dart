import 'package:app_mobile/video_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'theme.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Deteksi Kecepatan Aliran Air Sungai',
        style: appbarTextStyle,
      )),
      body: Center(
          child: Column(children: <Widget>[
        Center(child: Image.asset('assets/camera_undraw.png')),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text(
            'Selamat Datang',
            style: titleTextStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: CupertinoButton(
            color: thirdThemeColor,
            child: Text('Cara Penggunaan', style: subTitleTextStyle),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return VideoScreen();
              }));
            },
          ),
        ),
        CupertinoButton(
          color: thirdThemeColor,
          child: Text('Masuk Tampilan Rekam', style: subTitleTextStyle),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return VideoScreen();
            }));
          },
        ),
      ])),
    );
  }
}
