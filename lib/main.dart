// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_insta/firebase_options.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_insta/responsive/mobile.dart';
import 'package:flutter_insta/responsive/responsive.dart';
import 'package:flutter_insta/responsive/web.dart';
import 'package:flutter_insta/screens/register.dart';
import 'package:flutter_insta/screens/sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAvhpgvWtxSzQJ-BvzjbpF2USHrVmC_RJI",
            authDomain: "insta-app-697f5.firebaseapp.com",
            projectId: "insta-app-697f5",
            storageBucket: "insta-app-697f5.appspot.com",
            messagingSenderId: "35690579643",
            appId: "1:35690579643:web:93e53eb15132548efd0b9e"));
  } else {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Register(),
      // home: Responsive(
      //   myMobileScreen: Mobile(),
      //   myWebScreen: Web(),
      // ),
    );
  }
}
