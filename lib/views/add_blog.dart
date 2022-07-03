import 'dart:io';
import 'package:blog_app_new/services/crud.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class AddBlog extends StatefulWidget {
  @override
  _AddBlogState createState() => _AddBlogState();
}

class _AddBlogState extends State<AddBlog> {
  //
  File selectedImage;
  final picker = ImagePicker();

  bool isLoading = false;

  CrudMethods crudMethods = new CrudMethods();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        selectedImage = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future<void> uploadBlog() async {
    if (selectedImage != null) {
      // upload the image

      setState(() {
        isLoading = true;
      });
      Reference firebaseStorageRef = FirebaseStorage.instance
          .ref()
          .child("blogImages")
          .child("${randomAlphaNumeric(9)}.jpg");

      final UploadTask task = firebaseStorageRef.putFile(selectedImage);

      var imageUrl;
      await task.whenComplete(() async {
        try {
          imageUrl = await firebaseStorageRef.getDownloadURL();
        } catch (onError) {
          print("Error");
        }

        print(imageUrl);
      });

      // print(downloadUrl);

      Map<String, dynamic> blogData = {
        "imgUrl": imageUrl,
        "author": authorTextEditingController.text,
        "title": titleTextEditingController.text,
        "desc": descTextEditingController.text,
      };

      crudMethods.addData(blogData).then((value) {
        setState(() {
          isLoading = false;
        });
        Navigator.pop(context);
      });

      // upload the blog info
    }
  }

  //
  TextEditingController titleTextEditingController =
      new TextEditingController();
  TextEditingController descTextEditingController = new TextEditingController();
  TextEditingController authorTextEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Blog"),
        actions: [
          GestureDetector(
            onTap: () {
              uploadBlog();
            },
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.file_upload)),
          )
        ],
      ),
      body: isLoading
          ? Container(
              child: Center(
              child: CircularProgressIndicator(),
            ))
          : SingleChildScrollView(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          getImage();
                        },
                        child: selectedImage != null
                            ? Container(
                                height: 150,
                                margin: EdgeInsets.symmetric(vertical: 24),
                                width: MediaQuery.of(context).size.width,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  child: Image.file(
                                    selectedImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                margin: EdgeInsets.symmetric(vertical: 24),
                                width: MediaQuery.of(context).size.width,
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                      TextField(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        controller: titleTextEditingController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter title",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      TextField(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        controller: authorTextEditingController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter author name",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      TextField(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: null,
                        controller: descTextEditingController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Description",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
    );
  }
}
