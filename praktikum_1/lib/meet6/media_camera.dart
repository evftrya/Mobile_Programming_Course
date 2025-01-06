import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class mediaCamera extends StatefulWidget {
  const mediaCamera({super.key});

  @override
  State<mediaCamera> createState() => _mediaCameraState();
}

class _mediaCameraState extends State<mediaCamera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Media Camera',
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                Image.asset("assets/foto.jpg"),
                Image.network(
                    "https://i.pinimg.com/736x/e3/07/85/e30785754f110c9ab5713d06abb7fed3.jpg"),
                ElevatedButton(
                  onPressed: () {
                    pickImage();
                  },
                  child: Text('Pick Image Form Gallery'),
                ),
                ElevatedButton(
                  onPressed: () {
                    takePicture();
                  },
                  child: Text('Take Image Form Gallery'),
                ),
                ElevatedButton(
                  onPressed: () {
                    pickVideo();
                  },
                  child: Text('Pick Video Form Gallery'),
                ),
                ElevatedButton(
                  onPressed: () {
                    takeVideo();
                  },
                  child: Text('Take Video Form Gallery'),
                ),
                if (ImageFile != null) Image.file(ImageFile!),
                if (VideoFile != null)
                  AspectRatio(
                    aspectRatio: _controller!.value.aspectRatio,
                    child: VideoPlayer(_controller!),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }

  File? ImageFile;
  Future pickImage() async {
    final ImageFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (ImageFile == null) return;

    final imageTemp = File(ImageFile.path);

    setState(() {
      this.ImageFile = imageTemp;
    });
  }

  Future takePicture() async {
    final ImageFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (ImageFile == null) return;
    final ImageTemp = File(ImageFile.path);

    setState(() {
      this.ImageFile = ImageTemp;
    });
  }

  File? VideoFile;
  VideoPlayerController? _controller;
  Future pickVideo() async {
    final VideoFile =
        await ImagePicker().pickVideo(source: ImageSource.gallery);
    if (VideoFile == null) return;

    final VideoTemp = File(VideoFile.path);

    _controller = VideoPlayerController.file(VideoTemp)
      ..initialize().then((_) {
        setState(() {
          this.VideoFile = VideoTemp;
        });
        _controller!.play();
        _controller!.setLooping(true);
      });
  }

  Future takeVideo() async {
    final VideoFile = await ImagePicker().pickVideo(source: ImageSource.camera);
    if (VideoFile == null) return;

    final VideoTemp = File(VideoFile.path);

    _controller = VideoPlayerController.file(VideoTemp)
      ..initialize().then((_) {
        setState(() {
          this.VideoFile = VideoTemp;
        });
        _controller!.play();
        _controller!.setLooping(true);
      });
  }
}
