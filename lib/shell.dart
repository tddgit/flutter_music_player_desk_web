import 'package:flutter/material.dart';
import 'package:flutter_music_player_desk_web/screens/home_screen.dart';

class Shell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 140,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: <Widget>[],
          ),
        ),
      ),
      body: HomeScreen(),
    );
  }
}
