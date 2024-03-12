import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({super.key});

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  List ban = [
    {
      't1': 'WOMENS HISTORY MONTH',
      't2': 'Alpha',
      't3': 'Apple Music',
      'img': 'assets/1.jpg',
    },
    {
      't1': 'NEW PLAYLIST',
      't2': 'Reception Hits',
      't3': 'Apple Music',
      'img': 'assets/2.jpg',
    },
    {
      't1': 'JUST UPDATED',
      't2': 'Soundtrack your wedding with songs',
      't3': 'Apple Music',
      'img': 'assets/3.jpg',
    },
    {
      't1': 'ADD TO YOUR LIBRARY',
      't2': 'Soul Revival',
      't3': 'Apple Music R&B',
      'img': 'assets/4.jpg',
    },
    {
      't1': 'NEW PLAYLIST',
      't2': 'Punjabi Workout',
      't3': 'Apple Music Punjabi',
      'img': 'assets/5.jpg',
    }
  ];
  List song = [
    {
      "id": "wake_up_01",
      "title": "Intro - The Way Of Waking Up (feat. Alan Watts)",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/01_-_Intro_-_The_Way_Of_Waking_Up_feat_Alan_Watts.mp3",
      "image":
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/love-song-mixtape-album-cover-template-design-250a66b33422287542e2690b437f881b_screen.jpg?ts=1635176340",
      "trackNumber": 1,
      "totalTrackCount": 13,
      "duration": 90,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "wake_up_02",
      "title": "Geisha",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/02_-_Geisha.mp3",
      "image":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
      "trackNumber": 2,
      "totalTrackCount": 13,
      "duration": 267,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "wake_up_03",
      "title": "Voyage I - Waterfall",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/03_-_Voyage_I_-_Waterfall.mp3",
      "image":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
      "trackNumber": 3,
      "totalTrackCount": 13,
      "duration": 264,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "wake_up_04",
      "title": "The Music In You",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/04_-_The_Music_In_You.mp3",
      "image":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
      "trackNumber": 4,
      "totalTrackCount": 13,
      "duration": 223,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "wake_up_05",
      "title": "The Calm Before The Storm",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/05_-_The_Calm_Before_The_Storm.mp3",
      "image":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
      "trackNumber": 5,
      "totalTrackCount": 13,
      "duration": 229,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "wake_up_06",
      "title": "No Pain, No Gain",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/06_-_No_Pain_No_Gain.mp3",
      "image":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
      "trackNumber": 6,
      "totalTrackCount": 13,
      "duration": 304,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "wake_up_07",
      "title": "Voyage II - Satori",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/07_-_Voyage_II_-_Satori.mp3",
      "image":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
      "trackNumber": 7,
      "totalTrackCount": 13,
      "duration": 256,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "wake_up_08",
      "title": "Reveal the Magic",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/08_-_Reveal_the_Magic.mp3",
      "image":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
      "trackNumber": 8,
      "totalTrackCount": 13,
      "duration": 293,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "wake_up_09",
      "title": "Hachiko (The Faithtful Dog)",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/09_-_Hachiko_The_Faithtful_Dog.mp3",
      "image":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
      "trackNumber": 9,
      "totalTrackCount": 13,
      "duration": 185,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "wake_up_10",
      "title": "Wake Up",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/10_-_Wake_Up.mp3",
      "image":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
      "trackNumber": 10,
      "totalTrackCount": 13,
      "duration": 251,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "wake_up_11",
      "title": "Voyage III - The Space Between Us",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/11_-_Voyage_III_-_The_Space_Between_Us.mp3",
      "image":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
      "trackNumber": 11,
      "totalTrackCount": 13,
      "duration": 290,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "wake_up_12",
      "title": "Ume No Kaori (feat. Sunawai)",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/12_-_Ume_No_Kaori_feat_Sunawai.mp3",
      "image":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
      "trackNumber": 12,
      "totalTrackCount": 13,
      "duration": 334,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "wake_up_13",
      "title": "Outro - Totally Here and Now (feat. Alan Watts)",
      "album": "Wake Up",
      "artist": "The Kyoto Connection",
      "genre": "Electronic",
      "source":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/13_-_Outro_-_Totally_Here_and_Now_feat_Alan_Watts.mp3",
      "image":
          "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
      "trackNumber": 13,
      "totalTrackCount": 13,
      "duration": 242,
      "site":
          "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
    },
    {
      "id": "jazz_in_paris",
      "title": "Jazz in Paris",
      "album": "Jazz & Blues",
      "artist": "Media Right Productions",
      "genre": "Jazz & Blues",
      "source":
          "https://storage.googleapis.com/automotive-media/Jazz_In_Paris.mp3",
      "image": "https://storage.googleapis.com/automotive-media/album_art.jpg",
      "trackNumber": 1,
      "totalTrackCount": 6,
      "duration": 103,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "the_messenger",
      "title": "The Messenger",
      "album": "Jazz & Blues",
      "artist": "Silent Partner",
      "genre": "Jazz & Blues",
      "source":
          "https://storage.googleapis.com/automotive-media/The_Messenger.mp3",
      "image": "https://storage.googleapis.com/automotive-media/album_art.jpg",
      "trackNumber": 2,
      "totalTrackCount": 6,
      "duration": 132,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "talkies",
      "title": "Talkies",
      "album": "Jazz & Blues",
      "artist": "Huma-Huma",
      "genre": "Jazz & Blues",
      "source": "https://storage.googleapis.com/automotive-media/Talkies.mp3",
      "image": "https://storage.googleapis.com/automotive-media/album_art.jpg",
      "trackNumber": 3,
      "totalTrackCount": 6,
      "duration": 162,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "on_the_bach",
      "title": "On the Bach",
      "album": "Cinematic",
      "artist": "Jingle Punks",
      "genre": "Cinematic",
      "source":
          "https://storage.googleapis.com/automotive-media/On_the_Bach.mp3",
      "image": "https://storage.googleapis.com/automotive-media/album_art.jpg",
      "trackNumber": 4,
      "totalTrackCount": 6,
      "duration": 66,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "the_story_unfolds",
      "title": "The Story Unfolds",
      "album": "Cinematic",
      "artist": "Jingle Punks",
      "genre": "Cinematic",
      "source":
          "https://storage.googleapis.com/automotive-media/The_Story_Unfolds.mp3",
      "image": "https://storage.googleapis.com/automotive-media/album_art.jpg",
      "trackNumber": 5,
      "totalTrackCount": 6,
      "duration": 91,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "drop_and_roll",
      "title": "Drop and Roll",
      "album": "Youtube Audio Library Rock",
      "artist": "Silent Partner",
      "genre": "Rock",
      "source":
          "https://storage.googleapis.com/automotive-media/Drop_and_Roll.mp3",
      "image":
          "https://storage.googleapis.com/automotive-media/album_art_2.jpg",
      "trackNumber": 1,
      "totalTrackCount": 7,
      "duration": 121,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "motocross",
      "title": "Motocross",
      "album": "Youtube Audio Library Rock",
      "artist": "Topher Mohr and Alex Elena",
      "genre": "Rock",
      "source": "https://storage.googleapis.com/automotive-media/Motocross.mp3",
      "image":
          "https://storage.googleapis.com/automotive-media/album_art_2.jpg",
      "trackNumber": 2,
      "totalTrackCount": 7,
      "duration": 182,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "wish_youd_come_true",
      "title": "Wish You'd Come True",
      "album": "Youtube Audio Library Rock",
      "artist": "The 126ers",
      "genre": "Rock",
      "source":
          "https://storage.googleapis.com/automotive-media/Wish_You_d_Come_True.mp3",
      "image":
          "https://storage.googleapis.com/automotive-media/album_art_2.jpg",
      "trackNumber": 3,
      "totalTrackCount": 7,
      "duration": 169,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "awakening",
      "title": "Awakening",
      "album": "Youtube Audio Library Rock",
      "artist": "Silent Partner",
      "genre": "Rock",
      "source": "https://storage.googleapis.com/automotive-media/Awakening.mp3",
      "image":
          "https://storage.googleapis.com/automotive-media/album_art_2.jpg",
      "trackNumber": 4,
      "totalTrackCount": 7,
      "duration": 220,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "home",
      "title": "Home",
      "album": "Youtube Audio Library Rock",
      "artist": "Letter Box",
      "genre": "Rock",
      "source": "https://storage.googleapis.com/automotive-media/Home.mp3",
      "image":
          "https://storage.googleapis.com/automotive-media/album_art_2.jpg",
      "trackNumber": 5,
      "totalTrackCount": 7,
      "duration": 213,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "tell_the_angels",
      "title": "Tell The Angels",
      "album": "Youtube Audio Library Rock",
      "artist": "Letter Box",
      "genre": "Rock",
      "source":
          "https://storage.googleapis.com/automotive-media/Tell_The_Angels.mp3",
      "image":
          "https://storage.googleapis.com/automotive-media/album_art_2.jpg",
      "trackNumber": 6,
      "totalTrackCount": 7,
      "duration": 208,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "hey_sailor",
      "title": "Hey Sailor",
      "album": "Youtube Audio Library Rock",
      "artist": "Letter Box",
      "genre": "Rock",
      "source":
          "https://storage.googleapis.com/automotive-media/Hey_Sailor.mp3",
      "image":
          "https://storage.googleapis.com/automotive-media/album_art_2.jpg",
      "trackNumber": 7,
      "totalTrackCount": 7,
      "duration": 193,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "keys_to_the_kingdom",
      "title": "Keys To The Kingdom",
      "album": "Youtube Audio Library Rock 2",
      "artist": "The 126ers",
      "genre": "Rock",
      "source":
          "https://storage.googleapis.com/automotive-media/Keys_To_The_Kingdom.mp3",
      "image":
          "https://storage.googleapis.com/automotive-media/album_art_3.jpg",
      "trackNumber": 1,
      "totalTrackCount": 2,
      "duration": 221,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "the_coldest_shoulder",
      "title": "The Coldest Shoulder",
      "album": "Youtube Audio Library Rock 2",
      "artist": "The 126ers",
      "genre": "Rock",
      "source":
          "https://storage.googleapis.com/automotive-media/The_Coldest_Shoulder.mp3",
      "image":
          "https://storage.googleapis.com/automotive-media/album_art_3.jpg",
      "trackNumber": 2,
      "totalTrackCount": 2,
      "duration": 160,
      "site": "https://www.youtube.com/audiolibrary/music"
    },
    {
      "id": "spatial_01",
      "title": "Pre-game marching band",
      "album": "Spatial Audio",
      "artist": "Watson Wu",
      "genre": "People",
      "source":
          "https://storage.googleapis.com/uamp/Spatial Audio/Marching band.wav",
      "image":
          "https://storage.googleapis.com/uamp/Spatial Audio/Marching band.jpg",
      "trackNumber": 1,
      "totalTrackCount": 6,
      "duration": 56,
      "site": "https://library.soundfield.com/track/163"
    },
    {
      "id": "spatial_02",
      "title": "Chickens on a farm",
      "album": "Spatial Audio",
      "artist": "Watson Wu",
      "genre": "Animals",
      "source":
          "https://storage.googleapis.com/uamp/Spatial Audio/Chickens.wav",
      "image": "https://storage.googleapis.com/uamp/Spatial Audio/Chickens.jpg",
      "trackNumber": 2,
      "totalTrackCount": 6,
      "duration": 180,
      "site": "https://library.soundfield.com/track/129"
    },
    {
      "id": "spatial_03",
      "title": "Rural market busker",
      "album": "Spatial Audio",
      "artist": "Stephan Schutze",
      "genre": "Ambience",
      "source":
          "https://storage.googleapis.com/uamp/Spatial Audio/Rural market.wav",
      "image":
          "https://storage.googleapis.com/uamp/Spatial Audio/Rural market.jpg",
      "trackNumber": 3,
      "totalTrackCount": 6,
      "duration": 299,
      "site": "https://library.soundfield.com/track/55"
    },
    {
      "id": "spatial_04",
      "title": "Steamtrain interior",
      "album": "Spatial Audio",
      "artist": "Stephan Schutze",
      "genre": "Ambience",
      "source":
          "https://storage.googleapis.com/uamp/Spatial Audio/Steamtrain.wav",
      "image":
          "https://storage.googleapis.com/uamp/Spatial Audio/Steamtrain.jpg",
      "trackNumber": 4,
      "totalTrackCount": 6,
      "duration": 296,
      "site": "https://library.soundfield.com/track/65"
    },
    {
      "id": "spatial_05",
      "title": "Rural road car pass",
      "album": "Spatial Audio",
      "artist": "Stephan Schutze",
      "genre": "Ambience",
      "source":
          "https://storage.googleapis.com/uamp/Spatial Audio/Car pass.wav",
      "image":
          "https://i.pinimg.com/474x/63/d8/c2/63d8c24d77ea080d1a8dcb1cca2a683e.jpg",
      "trackNumber": 5,
      "totalTrackCount": 6,
      "duration": 302,
      "site": "https://library.soundfield.com/track/57"
    },
    {
      "id": "spatial_06",
      "title": "10 feet from shore",
      "album": "Spatial Audio",
      "artist": "Watson Wu",
      "genre": "Ambience",
      "source": "https://storage.googleapis.com/uamp/Spatial Audio/Shore.wav",
      "image":
          "https://i.pinimg.com/474x/aa/ec/28/aaec2887892340a23889a4e98d44afcb.jpg",
      "trackNumber": 6,
      "totalTrackCount": 6,
      "duration": 180,
      "site": "https://library.soundfield.com/track/114"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 100,
        title: Text(
          "Browse",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
        actions: [
          Container(
            // color: Colors.amber,
            padding: EdgeInsets.only(right: 5),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.account_circle_rounded,
                  size: 40,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 10, left: 0, right: 0),
                height: 350,
                // width: 1080 / 2.5,
                // color: const Color.fromARGB(255, 80, 71, 37),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ban.length,
                  itemBuilder: (context, index) {
                    return Container(
                      // color: Colors.red,
                      width: 370,
                      margin: EdgeInsets.only(left: 6, right: 6),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ban[index]['t1'],
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              ban[index]['t2'],
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              ban[index]['t3'],
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13)),
                                ),
                                child: Image.asset(
                                  ban[index]['img'],
                                  height: 720 / 3,
                                  width: 1080 / 3,
                                  fit: BoxFit.cover,
                                )),
                          ],
                        ),
                      ),
                    );
                  },
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              // color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "We Recommend",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: const Color.fromARGB(255, 186, 186, 186),
                  )
                ],
              ),
            ),
            Container(
              // color: Color.fromARGB(255, 5, 69, 68),
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                itemCount: song.length,
                itemBuilder: (context, index) {
                  int randomIndex = Random().nextInt(song.length);

                  return Container(
                    // color: Colors.amber,
                    margin: EdgeInsets.only(right: 10, left: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        ClipPath(
                          clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Image.network(
                            song[randomIndex]['image'],
                            height: 170,
                            width: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 1)),
                            Container(
                              width: 165,
                              // color: Colors.amberAccent,
                              child: Text(
                                song[randomIndex]['title'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              song[randomIndex]['artist'],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              // color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Now in Spatial Audio",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: const Color.fromARGB(255, 186, 186, 186),
                  )
                ],
              ),
            ),
            Container(
              // color: Color.fromARGB(255, 5, 69, 68),
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                itemCount: song.length,
                itemBuilder: (context, index) {
                  int randomIndex = Random().nextInt(song.length);

                  return Container(
                    // color: Colors.amber,
                    margin: EdgeInsets.only(right: 10, left: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        ClipPath(
                          clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Image.network(
                            song[randomIndex]['image'],
                            height: 170,
                            width: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 1)),
                            Container(
                              width: 165,
                              // color: Colors.amberAccent,
                              child: Text(
                                song[randomIndex]['title'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              song[randomIndex]['artist'],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              // color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Apple Music Sing",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: const Color.fromARGB(255, 186, 186, 186),
                  )
                ],
              ),
            ),
            Container(
              // color: Colors.amber,
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: const Color.fromARGB(255, 255, 7, 94),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 251, 47, 88),
                                Color.fromARGB(255, 255, 174, 174)
                              ],
                              stops: [0.4, 1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Let's",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    offset: Offset(0, 0),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Start Singing",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: const Color.fromARGB(255, 255, 7, 94),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 251, 47, 88),
                                Color.fromARGB(255, 255, 174, 174)
                              ],
                              stops: [0.4, 1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Sing",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    offset: Offset(0, 0),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.music_note_outlined,
                              size: 35,
                              shadows: [
                                Shadow(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  offset: Offset(0, 0),
                                  blurRadius: 15,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Start Singing",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: const Color.fromARGB(255, 255, 7, 94),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 251, 47, 88),
                                Color.fromARGB(255, 255, 174, 174)
                              ],
                              stops: [0.4, 1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "With",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    offset: Offset(0, 0),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Start Singing",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: const Color.fromARGB(255, 255, 7, 94),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 251, 47, 88),
                                Color.fromARGB(255, 255, 174, 174)
                              ],
                              stops: [0.4, 1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Apple",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    offset: Offset(0, 0),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Start Singing",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: const Color.fromARGB(255, 255, 7, 94),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 251, 47, 88),
                                Color.fromARGB(255, 255, 174, 174)
                              ],
                              stops: [0.4, 1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Music",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    offset: Offset(0, 0),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Start Singing",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              // color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Daily Top 100",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: const Color.fromARGB(255, 186, 186, 186),
                  )
                ],
              ),
            ),
            Container(
              // color: Color.fromARGB(255, 5, 69, 68),
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                itemCount: song.length,
                itemBuilder: (context, index) {
                  int randomIndex = Random().nextInt(song.length);

                  return Container(
                    // color: Colors.amber,
                    margin: EdgeInsets.only(right: 10, left: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        ClipPath(
                          clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Image.network(
                            song[randomIndex]['image'],
                            height: 170,
                            width: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 1)),
                            Container(
                              width: 165,
                              // color: Colors.amberAccent,
                              child: Text(
                                song[randomIndex]['title'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              song[randomIndex]['artist'],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
