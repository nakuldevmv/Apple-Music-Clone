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
      body: Container(
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
    );
  }
}
