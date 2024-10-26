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
import 'package:musicplayer/webView/webViewContainer.dart';

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
        '/list_test': (context) => const WebView(child: ListTest()),
        '/firstpage': (context) => const WebView(child: FirstPage()),
        '/browse': (context) => const WebView(child: BrowsePage()),
        '/radio': (context) => const WebView(child: RadioPage()),
        '/library': (context) => const WebView(child: LibraryPage()),
        '/search': (context) => const WebView(child: SearchPage()),
        '/home': (context) => const WebView(child: HomePage()),
        '/album': (context) => const WebView(child: AlbumPage()),
        '/artist': (context) => const WebView(child: ArtistPage()),
        '/artistlist': (context) => const WebView(child: ArtistList()),
        '/musiclist': (context) => const WebView(child: MusicList()),
        '/player': (context) => const WebView(child: MusicPlayer())
      },
    );
  }
}
