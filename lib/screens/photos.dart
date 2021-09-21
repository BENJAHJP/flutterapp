import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Photos extends StatefulWidget {
  const Photos({Key? key}) : super(key: key);

  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  File? cameraImage;
  File? deviceImage;

  Future getImageCamera() async {
    try {
      final cameraImage =
          await ImagePicker().pickImage(source: ImageSource.camera);
      if (cameraImage == null) return;
      final imageTemporary = File(cameraImage.path);
      setState(() => this.cameraImage = imageTemporary);
    } catch (e) {
      print('failed to pick image: $e');
    }
  }

  Future getImageDevice() async {
    try {
      final deviceImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (deviceImage == null) return;
      final imageTemporary = File(deviceImage.path);
      setState(() => this.deviceImage = imageTemporary);
    } catch (e) {
      print('failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Attach photos'),
        ),
        body: Column(
          children: [
            Container(
                child: cameraImage == null
                    ? const Text('Upload an image')
                    : Image.file(
                        cameraImage!,
                        width: 170,
                        height: 160,
                      )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: getImageCamera, child: const Icon(Icons.camera)),
                ElevatedButton(
                    onPressed: getImageDevice, child: const Icon(Icons.image))
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: getImageCamera,
          child: const Icon(Icons.upload),
        ));
  }
}
