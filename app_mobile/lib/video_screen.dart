import 'dart:convert';
import 'dart:async' show Future;
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/cupertino.dart';
import 'theme.dart';
import 'package:chewie/chewie.dart';
import 'package:http/http.dart' as http;

class VideoScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<VideoScreen> {
  File _video;
  String nilai = "";
  _videoPic() async {
    File theVideo = await ImagePicker.pickVideo(source: ImageSource.gallery);
    if (theVideo != null) {
      setState(() {
        _video = theVideo;
      });
    }
  }

  _record() async {
    File theVideo = await ImagePicker.pickVideo(source: ImageSource.camera);
    if (theVideo != null) {
      setState(() {
        _video = theVideo;
      });
    }
  }

  Future uploadVideo(File videoFile) async {
    setState(() {
      nilai = "Tunggu, Kecepatan air sedang dideteksi...";
    });
    var uri = Uri.parse("https://object-speed.herokuapp.com/");
    var request = new http.MultipartRequest("POST", uri);
    String ret = '';
    var multipartFile =
        await http.MultipartFile.fromPath("file", videoFile.path);
    request.files.add(multipartFile);
    http.StreamedResponse response = await request.send();

    response.stream.transform(utf8.decoder).listen((value) {
      final valueMap = json.decode(value);
      nilai = valueMap["data"].toString();
    });
    if (response.statusCode == 200) {
      ret = nilai;
    } else {
      ret = 'Failed';
    }
    setState(() {
      nilai = ret;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Deteksi'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                SizedBox(height: 16.0),
                Text(
                  "Silahkan Pilih",
                  style: subTitleTextStyle,
                ),
                SizedBox(height: 16.0),
                CupertinoButton(
                  color: firstColor,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Video', style: buttonTextStyle),
                      SizedBox(width: 8.0),
                      Icon(Icons.video_library),
                    ],
                  ),
                  onPressed: () {
                    _videoPic();
                  },
                ),
                SizedBox(height: 16.0),
                Text(
                  "Atau",
                  style: subTitleTextStyle,
                ),
                SizedBox(height: 16.0),
                CupertinoButton(
                  color: firstColor,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Rekam', style: buttonTextStyle),
                      SizedBox(width: 8.0),
                      Icon(Icons.videocam),
                    ],
                  ),
                  onPressed: () {
                    _record();
                  },
                ),
                SizedBox(height: 16.0),
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height * (30 / 100),
                  width: MediaQuery.of(context).size.width * (90 / 100),
                  child: _video == null
                      ? Center(
                          child: Icon(
                            Icons.videocam,
                            color: Colors.red,
                            size: 50.0,
                          ),
                        )
                      : Chewie(
                          controller: ChewieController(
                          videoPlayerController:
                              VideoPlayerController.file(_video),
                          aspectRatio: 3 / 2,
                          autoPlay: true,
                          looping: false,
                        )),
                ),
                SizedBox(height: 16.0),
                CupertinoButton(
                  color: firstColor,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Deteksi', style: buttonTextStyle),
                    ],
                  ),
                  onPressed: () {
                    uploadVideo(_video);
                  },
                ),
                SizedBox(height: 32.0),
                Text(
                  "Kecepatan Air Sungai(m/s) : ",
                  style: subTitleTextStyle,
                ),
                SizedBox(height: 16.0),
                Text(nilai, style: subTitleTextStyle)
              ],
            )
          ],
        ),
      ),
    );
  }
}
