import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDshaenKz99qAXfeFBsbOgCSJoXJKr24Vc",
            authDomain: "van-gogh-ai-4uwu82.firebaseapp.com",
            projectId: "van-gogh-ai-4uwu82",
            storageBucket: "van-gogh-ai-4uwu82.appspot.com",
            messagingSenderId: "565446896530",
            appId: "1:565446896530:web:c22d97339a348f62d66f4b"));
  } else {
    await Firebase.initializeApp();
  }
}
