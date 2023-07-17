import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Global {
  static TextStyle title = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle subTitle = const TextStyle(
      color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);
  static File? pic;
  static GlobalKey<FormState> cardKey = GlobalKey<FormState>();
  static TextEditingController companyNameController = TextEditingController();
  static TextEditingController tagLineController = TextEditingController();
  static TextEditingController nameController = TextEditingController();
  static TextEditingController contactController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController addController = TextEditingController();
  static TextEditingController positionController = TextEditingController();
  static TextEditingController socialFbController = TextEditingController();
  static TextEditingController socialInController = TextEditingController();
  static ImagePicker picker = ImagePicker();
  static XFile? image;
  static File? photo;
  static String companyName = '';
  static String tagLine = '';
  static String name = '';
  static String contact = '';
  static String email = '';
  static String add = '';
  static String position = '';
  static String socialFB = '';
  static String socialIN = '';
  static bool company = true;
}
