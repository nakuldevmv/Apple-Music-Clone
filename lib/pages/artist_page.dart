import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ArtistPage extends StatefulWidget {
  const ArtistPage({super.key});

  @override
  State<ArtistPage> createState() => _ArtistPageState();
}

class _ArtistPageState extends State<ArtistPage> {
  int currentIndex = 0;
  List TopPicks = [
    [
      {
        'artist': 'Joji',
        'artist_img':
            'https://www.billboard.com/wp-content/uploads/2020/03/joji-2020-cr-Damien-Maloney-billboard-1548-1585678185.jpg?w=942&h=623&crop=1',
        'image':
            'https://i.scdn.co/image/ab67616d0000b27308596cc28b9f5b00bfe08ae7', //url
        'song': 'Glimpse of Us',
        'album': 'Nectar',
      },
      {
        'artist': 'Joji',
        'artist_img':
            'https://www.billboard.com/wp-content/uploads/2020/03/joji-2020-cr-Damien-Maloney-billboard-1548-1585678185.jpg?w=942&h=623&crop=1',

        'image':
            'https://i.scdn.co/image/ab67616d0000b27360ba1d6104d0475c7555a6b2', //url
        'song': 'Slow Dancing in the Dark',
        'album': 'BALLADS 1',
      },
      {
        'artist': 'Joji',
        'artist_img':
            'https://www.billboard.com/wp-content/uploads/2020/03/joji-2020-cr-Damien-Maloney-billboard-1548-1585678185.jpg?w=942&h=623&crop=1',

        'image':
            'https://i.scdn.co/image/ab67616d0000b2734896429a87abfacd5d90587b', //url
        'song': 'Run',
        'album': 'BALLADS 1',
      },
      {
        'artist': 'Joji',
        'artist_img':
            'https://www.billboard.com/wp-content/uploads/2020/03/joji-2020-cr-Damien-Maloney-billboard-1548-1585678185.jpg?w=942&h=623&crop=1',

        'image':
            'https://i.scdn.co/image/ab67616d0000b27323c552a7a4fdafac02e08c34', //url
        'song': 'Sanctuary',
        'album': 'NECTAR',
      },
    ],
    [
      {
        'artist': 'Lana Del Rey',
        'artist_img':
            'https://media.themusic.com.au/images/standard/Artists/L/lana-del-rey/lana-del-rey-did-you-know.990x660.jpg',
        'image':
            'https://i.scdn.co/image/ab67616d0000b273cb76604d9c5963544cf5be64', //url
        'song': 'Born to Die',
        'album': 'Born to Die',
      },
      {
        'artist': 'Lana Del Rey',
        'artist_img':
            'https://media.themusic.com.au/images/standard/Artists/L/lana-del-rey/lana-del-rey-did-you-know.990x660.jpg',
        'image':
            'https://i.scdn.co/image/ab67616d00001e02aa27708d07f49c82ff0d0dae', //url
        'song': 'Video Games',
        'album': 'Born to Die',
      },
      {
        'artist': 'Lana Del Rey',
        'artist_img':
            'https://media.themusic.com.au/images/standard/Artists/L/lana-del-rey/lana-del-rey-did-you-know.990x660.jpg',
        'image':
            'https://i.scdn.co/image/ab67616d00001e020fa3aa7c15a3d57b3c6f74e9', //url
        'song': 'Summertime Sadness',
        'album': 'Born to Die',
      },
      {
        'artist': 'Lana Del Rey',
        'artist_img':
            'https://media.themusic.com.au/images/standard/Artists/L/lana-del-rey/lana-del-rey-did-you-know.990x660.jpg',
        'image':
            'https://i.scdn.co/image/ab67616d00001e021624590458126fc8b8c64c2f', //url
        'song': 'Blue Jeans',
        'album': 'Ultraviolence',
      },
    ],
    [
      {
        'artist': 'Tame Impala',
        'artist_img':
            'https://i0.wp.com/sinusoidalmusic.com/wp-content/uploads/2023/03/Web-capture_10-3-2023_194552_i1.wp.com_.jpeg?fit=1684%2C945&ssl=1',
        'image':
            'https://i.scdn.co/image/ab67616d0000b2739169478a2159b97202ef35b0', //url
        'song': 'Let It Happen',
        'album': 'Currents',
      },
      {
        'artist': 'Tame Impala',
        'artist_img':
            'https://i0.wp.com/sinusoidalmusic.com/wp-content/uploads/2023/03/Web-capture_10-3-2023_194552_i1.wp.com_.jpeg?fit=1684%2C945&ssl=1',

        'image':
            'https://i.scdn.co/image/ab67616d0000b2739e1cfc756886ac782e363d79', //url
        'song': 'The Less I Know the Better',
        'album': 'Currents',
      },
      {
        'artist': 'Tame Impala',
        'artist_img':
            'https://i0.wp.com/sinusoidalmusic.com/wp-content/uploads/2023/03/Web-capture_10-3-2023_194552_i1.wp.com_.jpeg?fit=1684%2C945&ssl=1',

        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy07EW5VPnMshmSD9_Gy2kFRmm4X3_1ckmutnBnPx9-GqHyI8isKu0tnhmwJL9ioUhynE&usqp=CAU', //url
        'song': 'Elephant',
        'album': 'Lonerism',
      },
      {
        'artist': 'Tame Impala',
        'artist_img':
            'https://i0.wp.com/sinusoidalmusic.com/wp-content/uploads/2023/03/Web-capture_10-3-2023_194552_i1.wp.com_.jpeg?fit=1684%2C945&ssl=1',

        'image':
            'https://i.scdn.co/image/ab67616d0000b273370c12f82872c9cfaee80193', //url
        'song': 'Feels Like We Only Go Backwards',
        'album': 'Currents',
      },
    ],
    [
      {
        'artist': 'Nico',
        'artist_img':
            'https://m.media-amazon.com/images/M/MV5BNjIxYzRiMTgtN2Y2Ni00Zjg0LTkxOWEtMTg1Y2UxZjliM2MwL2ltYWdlXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg',
        'image':
            'https://i.scdn.co/image/ab67616d0000b2739169478a2159b97202ef35b0', //url
        'song': 'Let It Happen',
        'album': 'Currents',
      },
      {
        'artist': 'Nico',
        'artist_img':
            'https://m.media-amazon.com/images/M/MV5BNjIxYzRiMTgtN2Y2Ni00Zjg0LTkxOWEtMTg1Y2UxZjliM2MwL2ltYWdlXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg',
        'image':
            'https://i.scdn.co/image/ab67616d0000b2739e1cfc756886ac782e363d79', //url
        'song': 'The Less I Know the Better',
        'album': 'Currents',
      },
      {
        'artist': 'Nico',
        'artist_img':
            'https://m.media-amazon.com/images/M/MV5BNjIxYzRiMTgtN2Y2Ni00Zjg0LTkxOWEtMTg1Y2UxZjliM2MwL2ltYWdlXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy07EW5VPnMshmSD9_Gy2kFRmm4X3_1ckmutnBnPx9-GqHyI8isKu0tnhmwJL9ioUhynE&usqp=CAU', //url
        'song': 'Elephant',
        'album': 'Lonerism',
      },
      {
        'artist': 'Nico',
        'artist_img':
            'https://m.media-amazon.com/images/M/MV5BNjIxYzRiMTgtN2Y2Ni00Zjg0LTkxOWEtMTg1Y2UxZjliM2MwL2ltYWdlXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg',
        'image':
            'https://i.scdn.co/image/ab67616d0000b273370c12f82872c9cfaee80193', //url
        'song': 'Feels Like We Only Go Backwards',
        'album': 'Currents',
      },
    ],
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final routes =
          ModalRoute.of(context)?.settings.arguments as Map<String, int>;
      if (routes != null && routes.containsKey('index')) {
        setState(() {
          currentIndex = routes['index']!;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            width: 500,
            height: 900, //main height adjust
            color: Colors.black,
            margin: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image.network(
                            TopPicks[currentIndex][0]['artist_img'],
                            height: 390,
                            width: 500,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            // color: Colors.amber,
                            padding: EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  TopPicks[currentIndex][0]['artist'],
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFFF92D48),
                                  ),
                                  child: Icon(
                                    Icons.play_arrow_rounded,
                                    size: 28,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150),
                              color: const Color.fromARGB(85, 158, 158, 158),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 20,
                              ),
                            ),
                          ),

                          // Add more actions to the app bar

                          Container(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(150),
                                    color:
                                        const Color.fromARGB(85, 158, 158, 158),
                                  ),
                                  child: Icon(
                                    Icons.star_border,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(150),
                                    color:
                                        const Color.fromARGB(85, 158, 158, 158),
                                  ),
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        // color: Colors.amberAccent,
                        padding: EdgeInsetsDirectional.all(10),
                        child: ClipPath(
                            clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            child: Image.network(
                              TopPicks[currentIndex][0]['image'],
                              height: 120,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        padding: EdgeInsetsDirectional.all(10),
                        // color: Color.fromARGB(255, 54, 36, 188),
                        height: 140,
                        width: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "4 NOV 2022",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            Text(TopPicks[currentIndex][0]['album'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                            Text("9 songs",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20)),
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(top: 5, left: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                color: Color.fromARGB(105, 82, 82, 82),
                              ),
                              child: Icon(
                                Icons.arrow_downward_rounded,
                                color: const Color.fromARGB(255, 255, 17, 0),
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  // color: const Color.fromARGB(255, 255, 7, 7),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 20),
                  // color: Colors.blueAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Top Songs",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                Container(
                    height: 290,
                    // color: const Color.fromARGB(255, 68, 55, 14),
                    padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 0),
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          // color: Color.fromARGB(255, 155, 155, 155),
                          child: Column(
                            children: [
                              Divider(
                                color: Color.fromARGB(255, 80, 80, 80),
                                thickness: .4,
                                indent: 58,
                                endIndent: 0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      ClipPath(
                                          clipper: ShapeBorderClipper(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          child: Image.network(
                                            TopPicks[currentIndex][index]
                                                ['image'],
                                            height: 50,
                                            width: 50,
                                            fit: BoxFit.cover,
                                          )),
                                      Container(
                                        // color: Colors.amber,
                                        width: 280,
                                        margin: EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              TopPicks[currentIndex][index]
                                                  ['song'],
                                              overflow:
                                                  TextOverflow.ellipsis, //error
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            Text(
                                              TopPicks[currentIndex][index]
                                                      ['album'] +
                                                  ' • 2022',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.more_horiz)
                                ],
                              ),
                              // Divider(
                              //   color: Color.fromARGB(255, 80, 80, 80),
                              //   thickness: .4,
                              //   indent: 58,
                              //   endIndent: 0,
                              // )
                            ],
                          ),
                        );
                      },
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
