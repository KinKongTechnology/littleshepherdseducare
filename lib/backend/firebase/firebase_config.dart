import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA0dN9xeiXMUIZh87PIuPz2GwuvrUaTwLw",
            authDomain: "little-shepherd-educare.firebaseapp.com",
            projectId: "little-shepherd-educare",
            storageBucket: "little-shepherd-educare.appspot.com",
            messagingSenderId: "451679835353",
            appId: "1:451679835353:web:626270261db8c46bcedac8"));
  } else {
    await Firebase.initializeApp();
  }
}
