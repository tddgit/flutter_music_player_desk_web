import 'package:flutter/material.dart';
import 'package:flutter_music_player_desk_web/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              if (MediaQuery.of(context).size.width > 800)
                SizedBox(
                  width: 280,
                  // height: double.infinity,
                  child: SideMenu(),
                ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    if (MediaQuery.of(context).size.height > 500)
                      SizedBox(
                        height: 250,
                        child: PlaylistHeader(),
                      ),
                    Expanded(
                      child: TracksList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 84,
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Expanded(child: CurrentTrack()),
            ],
          ),
        ),
      ],
    );
  }
}
