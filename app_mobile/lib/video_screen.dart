import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'theme.dart';

class VideoScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<VideoScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: firstColor),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context)),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Column(children: [
                SizedBox(
                  height: 50.0,
                ),
                CupertinoButton(
                  color: firstColor,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Video',style: buttonTextStyle),
                      SizedBox(width: 8.0),
                      Icon(Icons.video_library),
                    ],
                  ),
                  onPressed: () {},
                ),
                SizedBox(height: 16.0),
                CupertinoButton(
                  color: firstColor,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Record',style: buttonTextStyle),
                      SizedBox(width: 8.0),
                      Icon(Icons.videocam),
                    ],
                  ),
                  onPressed: () {},
                ),
                SizedBox(height: 320.0),
                CupertinoButton(
                  color: firstColor,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Send Video',style: buttonTextStyle),
                      SizedBox(width: 8.0),
                      Icon(Icons.send),
                    ],
                  ),
                  onPressed: () {},
                ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
