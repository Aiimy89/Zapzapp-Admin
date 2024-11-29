import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDQzcjSQp-Xv23E4mfIDYiY_rXsfP4V_0g",
            authDomain: "zapzapp-00.firebaseapp.com",
            projectId: "zapzapp-00",
            storageBucket: "zapzapp-00.appspot.com",
            messagingSenderId: "628302735445",
            appId: "1:628302735445:web:ff6b8148458e10f3cd4cdc",
            measurementId: "G-L56FNCZPSG"));
  } else {
    await Firebase.initializeApp();
  }
}
