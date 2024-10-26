import 'package:flutter/material.dart';
import 'package:musicplayer/Bottom%20NavBar/bottom_nav.dart';
import 'package:musicplayer/pages/list.dart';
import 'package:musicplayer/pages/album_page.dart';
import 'package:musicplayer/pages/artist_list.dart';
import 'package:musicplayer/pages/artist_page.dart';
import 'package:musicplayer/pages/browse_page.dart';
import 'package:musicplayer/pages/home_page.dart';
import 'package:musicplayer/pages/music_list.dart';
import 'package:musicplayer/pages/music_player.dart';
import 'package:musicplayer/pages/radio.dart';
import 'package:musicplayer/pages/search_page.dart';

import 'pages/library_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: const ColorScheme.dark(), scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0), appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0, scrolledUnderElevation: 0)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/firstpage',
      routes: {
        '/list_test': (context) => const ListTest(),
        '/firstpage': (context) => const FirstPage(),
        '/browse': (context) => const BrowsePage(),
        '/radio': (context) => const RadioPage(),
        '/library': (context) => const LibraryPage(),
        '/search': (context) => const SearchPage(),
        '/home': (context) => const HomePage(),
        '/album': (context) => const AlbumPage(),
        '/artist': (context) => const ArtistPage(),
        '/artistlist': (context) => const ArtistList(),
        '/musiclist': (context) => const MusicList(),
        '/player': (context) => const MusicPlayer()
      },
    );
  }
}
