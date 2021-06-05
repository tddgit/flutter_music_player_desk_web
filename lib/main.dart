import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_player_desk_web/shell.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isMacOS || Platform.isLinux || Platform.isWindows)) {
    await DesktopWindow.setMinWindowSize(
      const Size(600, 800),
    );
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Spotify clone',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        primaryColor: Colors.black,
        accentColor: const Color(0xFF1DB954),
        iconTheme: const IconThemeData().copyWith(color: Colors.white),
        textTheme: TextTheme(
          headline2: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: Colors.grey[300],
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: TextStyle(
            color: Colors.grey[300],
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            color: Colors.grey[300],
            letterSpacing: 1,
          ),
        ),
      ),
      home: Shell(),
    );
  }
}
