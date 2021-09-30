import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/cupertino.dart';
import 'theme.dart';
import 'package:chewie/chewie.dart';

class VideoScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<VideoScreen> {

  File videoFile;

  _videoPic()async{
    File theVideo = await ImagePicker.pickVideo(
        source: ImageSource.gallery);
    if(theVideo != null){
      setState(() {
        videoFile = theVideo;
      });
    }
  }

  _record()async{
    File theVideo = await ImagePicker.pickVideo(
        source: ImageSource.camera);
    if(theVideo != null){
      setState(() {
        videoFile = theVideo;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail Screen'),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Column(children: [
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height*(30/100),
                  width: MediaQuery.of(context).size.width*(100/100),
                  child: videoFile == null?Center(
                    child: Icon(Icons.videocam,color: Colors.red,size: 50.0,),
                  ):FittedBox(
                  fit: BoxFit.contain,
                    child: mounted?Chewie(
                      controller: ChewieController(
                        videoPlayerController: VideoPlayerController.file(videoFile),
                        aspectRatio: 3/2,
                        autoPlay: true,
                        looping: true,
                      ),
                    ):Container(),
                  ),
                ),
                SizedBox(
                  height: 16.0,
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
                  onPressed: () {_videoPic();},
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
                  onPressed: () {_record();},
                ),
                SizedBox(height: 160.0),
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
    );
  }
}
