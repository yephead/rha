import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDbCLdlcwtLyFyvKXB2H-WAdkcxiwaem70",
            authDomain: "wheel-wise.firebaseapp.com",
            projectId: "wheel-wise",
            storageBucket: "wheel-wise.appspot.com",
            messagingSenderId: "121716828250",
            appId: "1:121716828250:web:24aac07a8db619f28a1063",
            measurementId: "G-ZB1RJJP4ZK"));
  } else {
    await Firebase.initializeApp();
  }
}
