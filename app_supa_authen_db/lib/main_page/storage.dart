import 'dart:io';

import 'package:app_supabase/main_page/home.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Storage extends StatefulWidget {
  const Storage({super.key});

  @override
  State<Storage> createState() => _StorageState();
}

class _StorageState extends State<Storage> {
  File? imgFile;

  Future<void> getImg() async {
    //Only picker
    final ImagePicker picker = ImagePicker();

    // pick img from gallery
    final XFile? img = await picker.pickImage(source: ImageSource.gallery);

    // Update Img
    if (img != null) {
      setState(() {
        imgFile = File(img.path);
      });
    }
  }

  Future<void> getFile() async {
    final pick_file = await FilePicker.platform.pickFiles();

    if (pick_file == null) return;
    final file = pick_file.files.first;
    openFile(file);

    print("Name : ${file.name}");
    print("Size : ${file.size}");
    print("Path : ${file.path}");
    print("Extension : ${file.extension}");
    print("Bytes : ${file.bytes}");
  }

  // Upload
  Future<void> uploadImg() async {
    if (imgFile == null) return;

    final fileName = DateTime.now().millisecondsSinceEpoch.toString();
    final filePath = 'uploads/$fileName';

    // Upload file to Supabase Storage
    // Stroage Bucket : images
    await Supabase.instance.client.storage
        .from('images')
        .upload(filePath, imgFile!)
        .then(
          (value) => ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Upload Success"))),
        );
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("STORAGE PAGE"),
              imgFile != null ? Image.file(imgFile!) : Text("Not Selected Img"),
              ElevatedButton(
                onPressed: () {
                  getImg();
                },
                child: Text("Select Img"),
              ),

              ElevatedButton(
                onPressed: () {
                  uploadImg();
                },
                child: Text("Upload Img"),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                child: Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
