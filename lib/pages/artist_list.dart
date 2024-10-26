import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ArtistList extends StatefulWidget {
  const ArtistList({super.key});

  @override
  State<ArtistList> createState() => _ArtistListState();
}

class _ArtistListState extends State<ArtistList> {
  List TopPicks = [
    [
      {
        'artist': 'Joji',
        'artist_img': 'https://www.billboard.com/wp-content/uploads/2020/03/joji-2020-cr-Damien-Maloney-billboard-1548-1585678185.jpg?w=942&h=623&crop=1',
        'image': 'https://i.scdn.co/image/ab67616d0000b27308596cc28b9f5b00bfe08ae7', //url
        'song': 'Glimpse of Us',
        'album': 'Nectar',
      },
      {
        'artist': 'Joji',
        'artist_img': 'https://www.billboard.com/wp-content/uploads/2020/03/joji-2020-cr-Damien-Maloney-billboard-1548-1585678185.jpg?w=942&h=623&crop=1',

        'image': 'https://i.scdn.co/image/ab67616d0000b27360ba1d6104d0475c7555a6b2', //url
        'song': 'Slow Dancing in the Dark',
        'album': 'BALLADS 1',
      },
      {
        'artist': 'Joji',
        'artist_img': 'https://www.billboard.com/wp-content/uploads/2020/03/joji-2020-cr-Damien-Maloney-billboard-1548-1585678185.jpg?w=942&h=623&crop=1',

        'image': 'https://i.scdn.co/image/ab67616d0000b2734896429a87abfacd5d90587b', //url
        'song': 'Run',
        'album': 'BALLADS 1',
      },
      {
        'artist': 'Joji',
        'artist_img': 'https://www.billboard.com/wp-content/uploads/2020/03/joji-2020-cr-Damien-Maloney-billboard-1548-1585678185.jpg?w=942&h=623&crop=1',

        'image': 'https://i.scdn.co/image/ab67616d0000b27323c552a7a4fdafac02e08c34', //url
        'song': 'Sanctuary',
        'album': 'NECTAR',
      },
    ],
    [
      {
        'artist': 'Lana Del Rey',
        'artist_img': 'https://media.themusic.com.au/images/standard/Artists/L/lana-del-rey/lana-del-rey-did-you-know.990x660.jpg',
        'image': 'https://i.scdn.co/image/ab67616d0000b273cb76604d9c5963544cf5be64', //url
        'song': 'Born to Die',
        'album': 'Born to Die',
      },
      {
        'artist': 'Lana Del Rey',
        'artist_img': 'https://media.themusic.com.au/images/standard/Artists/L/lana-del-rey/lana-del-rey-did-you-know.990x660.jpg',
        'image': 'https://i.scdn.co/image/ab67616d00001e02aa27708d07f49c82ff0d0dae', //url
        'song': 'Video Games',
        'album': 'Born to Die',
      },
      {
        'artist': 'Lana Del Rey',
        'artist_img': 'https://media.themusic.com.au/images/standard/Artists/L/lana-del-rey/lana-del-rey-did-you-know.990x660.jpg',
        'image': 'https://i.scdn.co/image/ab67616d00001e020fa3aa7c15a3d57b3c6f74e9', //url
        'song': 'Summertime Sadness',
        'album': 'Born to Die',
      },
      {
        'artist': 'Lana Del Rey',
        'artist_img': 'https://media.themusic.com.au/images/standard/Artists/L/lana-del-rey/lana-del-rey-did-you-know.990x660.jpg',
        'image': 'https://i.scdn.co/image/ab67616d00001e021624590458126fc8b8c64c2f', //url
        'song': 'Blue Jeans',
        'album': 'Ultraviolence',
      },
    ],
    [
      {
        'artist': 'Tame Impala',
        'artist_img': 'https://i0.wp.com/sinusoidalmusic.com/wp-content/uploads/2023/03/Web-capture_10-3-2023_194552_i1.wp.com_.jpeg?fit=1684%2C945&ssl=1',
        'image': 'https://i.scdn.co/image/ab67616d0000b2739169478a2159b97202ef35b0', //url
        'song': 'Let It Happen',
        'album': 'Currents',
      },
      {
        'artist': 'Tame Impala',
        'artist_img': 'https://i0.wp.com/sinusoidalmusic.com/wp-content/uploads/2023/03/Web-capture_10-3-2023_194552_i1.wp.com_.jpeg?fit=1684%2C945&ssl=1',

        'image': 'https://i.scdn.co/image/ab67616d0000b2739e1cfc756886ac782e363d79', //url
        'song': 'The Less I Know the Better',
        'album': 'Currents',
      },
      {
        'artist': 'Tame Impala',
        'artist_img': 'https://i0.wp.com/sinusoidalmusic.com/wp-content/uploads/2023/03/Web-capture_10-3-2023_194552_i1.wp.com_.jpeg?fit=1684%2C945&ssl=1',

        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy07EW5VPnMshmSD9_Gy2kFRmm4X3_1ckmutnBnPx9-GqHyI8isKu0tnhmwJL9ioUhynE&usqp=CAU', //url
        'song': 'Elephant',
        'album': 'Lonerism',
      },
      {
        'artist': 'Tame Impala',
        'artist_img': 'https://i0.wp.com/sinusoidalmusic.com/wp-content/uploads/2023/03/Web-capture_10-3-2023_194552_i1.wp.com_.jpeg?fit=1684%2C945&ssl=1',

        'image': 'https://i.scdn.co/image/ab67616d0000b273370c12f82872c9cfaee80193', //url
        'song': 'Feels Like We Only Go Backwards',
        'album': 'Currents',
      },
    ],
    [
      {
        'artist': 'Nico',
        'artist_img': 'https://m.media-amazon.com/images/M/MV5BNjIxYzRiMTgtN2Y2Ni00Zjg0LTkxOWEtMTg1Y2UxZjliM2MwL2ltYWdlXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg',
        'image': 'https://i.scdn.co/image/ab67616d0000b2739169478a2159b97202ef35b0', //url
        'song': 'Let It Happen',
        'album': 'Currents',
      },
      {
        'artist': 'Nico',
        'artist_img': 'https://m.media-amazon.com/images/M/MV5BNjIxYzRiMTgtN2Y2Ni00Zjg0LTkxOWEtMTg1Y2UxZjliM2MwL2ltYWdlXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg',
        'image': 'https://i.scdn.co/image/ab67616d0000b2739e1cfc756886ac782e363d79', //url
        'song': 'The Less I Know the Better',
        'album': 'Currents',
      },
      {
        'artist': 'Nico',
        'artist_img': 'https://m.media-amazon.com/images/M/MV5BNjIxYzRiMTgtN2Y2Ni00Zjg0LTkxOWEtMTg1Y2UxZjliM2MwL2ltYWdlXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy07EW5VPnMshmSD9_Gy2kFRmm4X3_1ckmutnBnPx9-GqHyI8isKu0tnhmwJL9ioUhynE&usqp=CAU', //url
        'song': 'Elephant',
        'album': 'Lonerism',
      },
      {
        'artist': 'Nico',
        'artist_img': 'https://m.media-amazon.com/images/M/MV5BNjIxYzRiMTgtN2Y2Ni00Zjg0LTkxOWEtMTg1Y2UxZjliM2MwL2ltYWdlXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg',
        'image': 'https://i.scdn.co/image/ab67616d0000b273370c12f82872c9cfaee80193', //url
        'song': 'Feels Like We Only Go Backwards',
        'album': 'Currents',
      },
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "           Favourite Artist",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.red,
          ), // replace with your desired icon
          onPressed: () {
            Navigator.of(context).pop(); // go back to the previous page when the icon is pressed
          },
        ),
      ),
      body: Container(
        child: Container(
            child: ListView.builder(
          itemCount: TopPicks.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/artist', arguments: {
                  'index': index
                });
              },
              child: Container(
                // color: const Color.fromARGB(255, 63, 55, 28),
                padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.red,
                              size: 15,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ClipPath(
                              clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(150),
                                ),
                              ),
                              child: CachedNetworkImage(
                                placeholder: (context, url) => const CircularProgressIndicator(),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                                imageUrl: TopPicks[index][index]['artist_img'],
                                height: 90,
                                width: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              TopPicks[index][index]['artist'],
                              style: const TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 18,
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 61, 61, 61),
                      thickness: .4,
                      indent: 125,
                      endIndent: 0,
                    )
                  ],
                ),
              ),
            );
          },
        )),
      ),
    );
  }
}
