import 'package:flutter/material.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({super.key});

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  List Banner = [
    {
      't1': 'Womens History Month',
      't2': 'Alpha',
      't3': 'Alpha Music',
      'img': 'assets/1.jpg',
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
        height: 250,
        width: 300,
        color: const Color.fromARGB(255, 80, 71, 37),
        child: Column(
          children: [
            Text("Womens History Month"),
            Image.asset(Banner[0]['img']),
            Text("data"),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
