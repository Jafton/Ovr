import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBdtTBBI-YWZW2D9lwfsjpmsosIlAjXLB8",
            authDomain: "ovr-connect-3952a.firebaseapp.com",
            projectId: "ovr-connect-3952a",
            storageBucket: "ovr-connect-3952a.appspot.com",
            messagingSenderId: "714168235896",
            appId: "1:714168235896:web:6183043a31bf5c95493a8d",
            measurementId: "G-6QQ82HK8RY"));
  } else {
    await Firebase.initializeApp();
  }
}
