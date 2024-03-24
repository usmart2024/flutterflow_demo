import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB9bURZ9hW3sP2qQdctFaTvUAVJTNmCBxo",
            authDomain: "leilao-ea4ea.firebaseapp.com",
            projectId: "leilao-ea4ea",
            storageBucket: "leilao-ea4ea.appspot.com",
            messagingSenderId: "564385018948",
            appId: "1:564385018948:web:989640360e513808127811",
            measurementId: "G-N5PH6237X3"));
  } else {
    await Firebase.initializeApp();
  }
}
