import 'package:app_mobile/video_screen.dart';
import 'package:app_mobile/guide_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'theme.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Deteksi Kecepatan Air Sungai',
        style: appbarTextStyle,
      )),
      body: Center(
          child: Column(children: <Widget>[
        Center(child: Image.asset('assets/camera_undraw.png')),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 32.0),
          child: Text(
            'Selamat Datang',
            style: titleTextStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: CupertinoButton(
            color: firstColor,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Panduan', style: buttonTextStyle),
                SizedBox(width: 4.0),
              ],
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GuideScreen();
              }));
            },
          ),
        ),
        CupertinoButton(
          color: firstColor,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Mulai Deteksi', style: buttonTextStyle),
            ],
          ),
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
