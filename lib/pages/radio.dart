import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  List radio = [
    {
      'text1': 'Music 1',
      'text2': 'The new music matter',
      "topMsg": "Made for you",
      "image":
          "https://upload.wikimedia.org/wikipedia/en/1/1b/Joji_-_Nectar.png",
      "title": "Nectar",
      "artist": "Joji",
      "song": ""
    },
    {
      'text1': 'Music Hits',
      'text2': 'Songs you know and love',
      "topMsg": "New Release",
      "image":
          "https://static.stereogum.com/uploads/2023/03/LDR-Tunnel-1679672318-1000x1000.jpg",
      "title": "Ocean Blvd",
      "artist": "Lana Del Rey",
      "song": ""
    },
    {
      'text1': 'Music Country',
      'text2': 'Where it sounds like home',
      "topMsg": "Featuring Tame Impala",
      "image":
          "https://qodeinteractive.com/magazine/wp-content/uploads/2020/06/16-Tame-Impala.jpg",
      "title": "Tame Impala",
      "artist": "Currents",
      "song": ""
    },
    {
      'text1': 'Music Country',
      'text2': 'Where it sounds like home',
      "topMsg": "Made for you",
      "image":
          "https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcT9kry1myZTi2dMJ7OtgJjmdT__lImpI-pJ9mdq42Cz8HhIet_ro_Obp6q4xbksBbpT",
      "title": "The dark side of the moon",
      "artist": "Pink floyd ",
      "song": ""
    },
    // {
    //   "topMsg": "Featuring Tame Nico",
    //   "image":
    //       "https://upload.wikimedia.org/wikipedia/en/0/0c/Velvet_Underground_and_Nico.jpg",
    //   "title": "The Velvet Underground and Nico",
    //   "artist": "Nico",
    //   "song": ""
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 100,
        title: Text(
          "Radio",
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
            // height: 600,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                // color: Colors.amber,
                child: Column(
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      // padding: EdgeInsets.all(5),
                                      child: Icon(
                                        Icons.apple,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 1),
                                        child: Text(radio[0]['text1'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(radio[0]['text2'],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15))),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                color: Color.fromARGB(84, 110, 110, 110),
                              ),
                              child: Icon(
                                Icons.calendar_month_rounded,
                                color: Colors.red,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // color: Colors.amber,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                  ),
                                ),
                                child: Image.network(
                                  radio[0]['image'],
                                  height: 280,
                                  width: 380,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  height: 100,
                                  width: 380,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: [
                                      const Color.fromARGB(255, 83, 83, 83),
                                      Color.fromARGB(255, 65, 65, 65)
                                    ],
                                    stops: [0, 1],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                  )),

                                  // color: Color.fromARGB(255, 255, 227, 114),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("LIVE • 9:30 - 11:30 PM",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  radio[0]['title'],
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  radio[0]['artist'],
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.play_circle_fill_rounded,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                // color: Colors.amber,
                child: Column(
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      // padding: EdgeInsets.all(5),
                                      child: Icon(
                                        Icons.apple,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 1),
                                        child: Text(radio[1]['text1'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(radio[1]['text2'],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15))),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                color: Color.fromARGB(84, 110, 110, 110),
                              ),
                              child: Icon(
                                Icons.calendar_month_rounded,
                                color: Colors.red,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // color: Colors.amber,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                  ),
                                ),
                                child: Image.network(
                                  radio[1]['image'],
                                  height: 280,
                                  width: 380,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  height: 100,
                                  width: 380,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: [
                                      const Color.fromARGB(255, 83, 83, 83),
                                      Color.fromARGB(255, 65, 65, 65)
                                    ],
                                    stops: [0, 1],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                  )),

                                  // color: Color.fromARGB(255, 255, 227, 114),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("LIVE • 9:30 - 11:30 PM",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  radio[1]['title'],
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  radio[1]['artist'],
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.play_circle_fill_rounded,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                // color: Colors.amber,
                child: Column(
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      // padding: EdgeInsets.all(5),
                                      child: Icon(
                                        Icons.apple,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 1),
                                        child: Text(radio[2]['text1'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(radio[2]['text2'],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15))),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                color: Color.fromARGB(84, 110, 110, 110),
                              ),
                              child: Icon(
                                Icons.calendar_month_rounded,
                                color: Colors.red,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // color: Colors.amber,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                  ),
                                ),
                                child: Image.network(
                                  radio[2]['image'],
                                  height: 280,
                                  width: 380,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  height: 100,
                                  width: 380,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: [
                                      const Color.fromARGB(255, 83, 83, 83),
                                      Color.fromARGB(255, 65, 65, 65)
                                    ],
                                    stops: [0, 1],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                  )),

                                  // color: Color.fromARGB(255, 255, 227, 114),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("LIVE • 9:30 - 11:30 PM",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  radio[2]['title'],
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  radio[2]['artist'],
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.play_circle_fill_rounded,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
          Container(
            color: Colors.grey,
            height: 200,
            width: 200,
          )
        ],
      )),
    );
  }
}
