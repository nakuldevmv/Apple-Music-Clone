import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:palette_generator/palette_generator.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
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

  //variable for music audioPlayer
  final AudioPlayer audioPlayer = AudioPlayer();
  PaletteGenerator? paletteGenerator;
  List<Color> colors = [Colors.white, Colors.black];
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  int currentIndex = 0;

  //implement init state
  @override
  void initState() {
    super.initState();
    _updatePaletteGenerator(currentIndex);
    changeImage(currentIndex);

    // List<Color> color1 = [];
    // List<Color> color2 = [];
    audioPlayer.onPlayerStateChanged.listen((state) {
      if (state == PlayerState.completed) {
        // Handle completion
      }
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final routes =
          ModalRoute.of(context)?.settings.arguments as Map<String, int>;
      if (routes != null && routes.containsKey('index')) {
        setState(() {
          currentIndex = routes['index']!;
        });
        _loadSong(currentIndex!); // Load the song based on the index
      }
    });
  }

  // @override
  // void dispose() {
  //   audioPlayer.dispose();
  //   super.dispose();
  // }
  void changeImage(int newIndex) async {
    // Update the current index to the new index
    setState(() {
      currentIndex = newIndex;
    });

    // Call _updatePaletteGenerator to update the colors based on the new image
    await _updatePaletteGenerator(currentIndex);
  }

  Future<void> _updatePaletteGenerator(int index) async {
    if (index == null) return; // Ensure we have a current index
    final String imageUrl = song[index!]['image']!;
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      NetworkImage(imageUrl),
      size: Size(200, 200),
    );
    if (paletteGenerator != null && paletteGenerator!.colors.isNotEmpty) {
      Color color1 = paletteGenerator!.lightVibrantColor?.color ?? colors[0];
      Color color2 = paletteGenerator!.darkVibrantColor?.color ?? colors[1];
      setState(() {
        colors = [color1, color2];
      });
    }
  }

  void _loadSong(int index) async {
    await audioPlayer.setSourceUrl(song[index]['source']);
    // Additional code to play the song right after loading if needed
    if (!isPlaying) {
      audioPlayer.play(UrlSource(song[index]['source']));
      await _updatePaletteGenerator(index);
    }
  }

  String formatTime(Duration duration) {
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 500,
        leading: GestureDetector(
          onVerticalDragDown: (details) {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.horizontal_rule_rounded,
            size: 70,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: colors,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )),

            // height: 500,
            // width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(97, 0, 0, 0),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipPath(
                    clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Image.network(
                      song[currentIndex ?? 0]['image'],
                      height: 350,
                      width: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  // color: Color.fromARGB(255, 13, 0, 132),
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.blue,
                        width: 270,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              song[currentIndex ?? 0]['title'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(song[currentIndex ?? 0]['artist']),
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.amber,
                        margin: EdgeInsets.only(right: 22),
                        child: Row(
                          children: [
                            // Padding(padding: EdgeInsets.only(right: 10)),
                            Icon(
                              Icons.stars,
                              size: 33,
                              color: Color.fromARGB(223, 228, 228, 228),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(158, 136, 136, 136)),
                              // color: Colors.black12,
                              child: Icon(
                                Icons.more_horiz_rounded,
                                size: 29,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // color: Colors.amber,
                  height: 20,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 5.0,
                      trackShape: RoundedRectSliderTrackShape(),
                      activeTrackColor:
                          const Color.fromARGB(255, 233, 233, 233),
                      inactiveTrackColor: const Color.fromARGB(255, 80, 80, 80),
                      thumbShape: RoundSliderThumbShape(
                        elevation: 0,
                        pressedElevation: 0,
                      ),
                      thumbColor: Colors.transparent,
                      overlayColor: Colors.transparent,
                      activeTickMarkColor: Colors.transparent,
                      disabledThumbColor: Colors.transparent,
                      valueIndicatorColor: Colors.transparent,
                      inactiveTickMarkColor: Colors.transparent,
                      disabledActiveTrackColor: Colors.transparent,
                      secondaryActiveTrackColor: Colors.transparent,
                      valueIndicatorStrokeColor: Colors.transparent,
                      disabledInactiveTrackColor: Colors.transparent,
                      disabledActiveTickMarkColor: Colors.transparent,
                      overlappingShapeStrokeColor: Colors.transparent,
                      disabledInactiveTickMarkColor: Colors.transparent,
                      disabledSecondaryActiveTrackColor: Colors.transparent,
                    ),
                    child: Slider(
                      min: 0,
                      max: duration.inSeconds.toDouble(),
                      value: position.inSeconds
                          .clamp(0, duration.inSeconds)
                          .toDouble(),
                      onChanged: (value) {
                        final newPosition = Duration(seconds: value.toInt());
                        audioPlayer.seek(newPosition);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 22, right: 22),
                  // color: Colors.indigo,
                  // width: 340,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Padding(padding: EdgeInsets.only(left: 10, right: 10)),
                      Text(
                        formatTime(position),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(formatTime(duration - position),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.fast_rewind_rounded,
                        size: 70,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      onPressed: currentIndex > 0
                          ? () {
                              setState(() {
                                currentIndex--; // Decrement the current index
                              });
                              _loadSong(currentIndex!);
                            }
                          : null,
                    ),
                    IconButton(
                      icon: Icon(
                        isPlaying
                            ? Icons.pause_rounded
                            : Icons.play_arrow_rounded,
                        size: 70,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      onPressed: () {
                        if (isPlaying) {
                          audioPlayer.pause();
                        } else {
                          audioPlayer.play(
                              UrlSource(song[currentIndex ?? 0]['source']));
                        }
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.fast_forward_rounded,
                        size: 70,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      onPressed: currentIndex < song.length - 1
                          ? () {
                              setState(() {
                                currentIndex++; // Increment the current index
                              });
                              _loadSong(currentIndex!);
                            }
                          : null,
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
