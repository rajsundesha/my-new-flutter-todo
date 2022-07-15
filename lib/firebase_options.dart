// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBZe0Z8W4zQVyeXUYo-_UAgsWzqGt-iw54',
    appId: '1:532641046206:web:29213a32be7a6187fe48ef',
    messagingSenderId: '532641046206',
    projectId: 'todo-app-flutter-raj24',
    authDomain: 'todo-app-flutter-raj24.firebaseapp.com',
    storageBucket: 'todo-app-flutter-raj24.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7wPVG6jnBhAUwUz1hWUJzRQWTyo2iCIM',
    appId: '1:532641046206:android:527a5bee0bcbb655fe48ef',
    messagingSenderId: '532641046206',
    projectId: 'todo-app-flutter-raj24',
    storageBucket: 'todo-app-flutter-raj24.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCffCBNiDPB3byj9ppYO0ix7VzC5PXF7LY',
    appId: '1:532641046206:ios:c58cf6a6c6f6d1e1fe48ef',
    messagingSenderId: '532641046206',
    projectId: 'todo-app-flutter-raj24',
    storageBucket: 'todo-app-flutter-raj24.appspot.com',
    iosClientId: '532641046206-qga2padb6eiir9dntuu3b8t9rr3trir4.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoListApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCffCBNiDPB3byj9ppYO0ix7VzC5PXF7LY',
    appId: '1:532641046206:ios:c58cf6a6c6f6d1e1fe48ef',
    messagingSenderId: '532641046206',
    projectId: 'todo-app-flutter-raj24',
    storageBucket: 'todo-app-flutter-raj24.appspot.com',
    iosClientId: '532641046206-qga2padb6eiir9dntuu3b8t9rr3trir4.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoListApp',
  );
}