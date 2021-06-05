import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_player_desk_web/data/library_playlists.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: 280,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 8),
                child: Image.asset(
                  'assets/images/spotify_logo.png',
                  height: 55,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ],
          ),
          _sideMenuIconTab(
            iconData: Icons.home,
            title: 'Home',
            onTap: () => print('TODO: onTap()'), //TODO: onTap()
          ),
          _sideMenuIconTab(
            iconData: Icons.search,
            title: 'Search',
            onTap: () => print('TODO: onTap()'), //TODO: onTap()
          ),
          _sideMenuIconTab(
            iconData: Icons.audiotrack,
            title: 'Radio',
            onTap: () => print('TODO: onTap()'), //TODO: onTap()
          ),
          SizedBox(height: 12),
          _libraryPlaylistTab(),
        ],
      ),
    );
  }
}

class _libraryPlaylistTab extends StatefulWidget {
  const _libraryPlaylistTab({Key? key}) : super(key: key);

  @override
  __libraryPlaylistTabState createState() => __libraryPlaylistTabState();
}

class __libraryPlaylistTabState extends State<_libraryPlaylistTab> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        isAlwaysShown: true,
        controller: _scrollController,
        child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 12),
            physics: const ClampingScrollPhysics(),
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      'YOUR LIBRARY',
                      style: Theme.of(context).textTheme.headline4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  ...yourLibrary.map(
                    (String e) => ListTile(
                      onTap: () => print('TODO: onTap()'), //TODO: onTap()
                      dense: true,
                      title: Text(
                        e,
                        style: Theme.of(context).textTheme.bodyText2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      'PLAYLISTS',
                      style: Theme.of(context).textTheme.headline4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  ...playlists.map(
                    (String e) => ListTile(
                      onTap: () => print('TODO: onTap()'), //TODO: onTap()
                      dense: true,
                      title: Text(
                        e,
                        style: Theme.of(context).textTheme.bodyText2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}

class _sideMenuIconTab extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onTap;

  const _sideMenuIconTab({
    required this.iconData,
    required this.onTap,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        iconData,
        color: Theme.of(context).iconTheme.color,
        size: 28,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
