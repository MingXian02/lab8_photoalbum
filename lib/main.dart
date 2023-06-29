import 'package:flutter/material.dart';
import 'package:photo_album_app/screens/pin_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const PhotoAlbumApp());
}

class PhotoAlbumApp extends StatelessWidget {
  const PhotoAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Album App',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(64, 16, 176, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 107, 137, 220),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromRGBO(74, 66, 225, 1),
            ),
          ),
        ),
      ),
      home: PinScreen(),
    );
  }
}
