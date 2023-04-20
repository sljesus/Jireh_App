import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBmP43EYaGvCjEqfcfOOSGZ3Bz0ykJWEmI",
            authDomain: "jireh-app-1d707.firebaseapp.com",
            projectId: "jireh-app-1d707",
            storageBucket: "jireh-app-1d707.appspot.com",
            messagingSenderId: "782888885019",
            appId: "1:782888885019:web:eb135f203bcc7c2b3f91be",
            measurementId: "G-11TYP0STL7"));
  } else {
    await Firebase.initializeApp();
  }
}
