import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Map<String, dynamic>> BrowseCat = [
    {
      "image": "https://pyxis.nymag.com/v1/imgs/3a3/b1f/2141226b8ab1ae07afe4b541ee0d2b0825-11-yic-pop-essay.rsocial.w1200.jpg",
      "title": "Pop"
    },
    {
      "image": "https://images.saymedia-content.com/.image/t_share/MTgzNjE1MzI5MDYxMTE5NzA1/best-modern-rock-bands.jpg",
      "title": "Rock"
    },
    {
      "image": "https://neonmusic.online/wp-content/uploads/2023/04/music-3264716_1280.jpg",
      "title": "Jazz"
    },
    {
      "image": "https://uproxx.com/wp-content/uploads/2018/02/hip-hop-grid-uproxx.jpg",
      "title": "Hip Hop"
    },
    {
      "image": "https://www.wideopencountry.com/wp-content/uploads/sites/4/2017/04/eric.jpg?fit=798%2C526",
      "title": "Country"
    },
    {
      "image": "https://c02.purpledshub.com/uploads/sites/43/2021/06/What-is-blues-music--1def93e.jpg",
      "title": "Blues"
    },
    {
      "image": "https://images.unsplash.com/photo-1624703307604-744ec383cbf4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Electronic"
    },
    {
      "image": "https://i.guim.co.uk/img/media/b34325085c62cb49ec9b528b5586696100cecfa9/0_0_4000_2667/master/4000.jpg?width=700&quality=85&auto=format&fit=max&s=c7d68dd52e6cefddb7df03822e2d7759",
      "title": "Classical"
    },
    {
      "image": "https://cdn.britannica.com/73/101873-050-D341E939/Bob-Marley-1978.jpg",
      "title": "Reggae"
    },
    {
      "image": "https://ichef.bbci.co.uk/images/ic/480xn/p06y1mg4.jpg",
      "title": "Folk"
    },
    {
      "image": "https://pyxis.nymag.com/v1/imgs/3a3/b1f/2141226b8ab1ae07afe4b541ee0d2b0825-11-yic-pop-essay.rsocial.w1200.jpg",
      "title": "Pop"
    },
    {
      "image": "https://images.saymedia-content.com/.image/t_share/MTgzNjE1MzI5MDYxMTE5NzA1/best-modern-rock-bands.jpg",
      "title": "Rock"
    },
    {
      "image": "https://neonmusic.online/wp-content/uploads/2023/04/music-3264716_1280.jpg",
      "title": "Jazz"
    },
    {
      "image": "https://uproxx.com/wp-content/uploads/2018/02/hip-hop-grid-uproxx.jpg",
      "title": "Hip Hop"
    },
    {
      "image": "https://www.wideopencountry.com/wp-content/uploads/sites/4/2017/04/eric.jpg?fit=798%2C526",
      "title": "Country"
    },
    {
      "image": "https://c02.purpledshub.com/uploads/sites/43/2021/06/What-is-blues-music--1def93e.jpg",
      "title": "Blues"
    },
    {
      "image": "https://images.unsplash.com/photo-1624703307604-744ec383cbf4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Electronic"
    },
    {
      "image": "https://i.guim.co.uk/img/media/b34325085c62cb49ec9b528b5586696100cecfa9/0_0_4000_2667/master/4000.jpg?width=700&quality=85&auto=format&fit=max&s=c7d68dd52e6cefddb7df03822e2d7759",
      "title": "Classical"
    },
    {
      "image": "https://cdn.britannica.com/73/101873-050-D341E939/Bob-Marley-1978.jpg",
      "title": "Reggae"
    },
    {
      "image": "https://ichef.bbci.co.uk/images/ic/480xn/p06y1mg4.jpg",
      "title": "Folk"
    },
    {
      "image": "https://pyxis.nymag.com/v1/imgs/3a3/b1f/2141226b8ab1ae07afe4b541ee0d2b0825-11-yic-pop-essay.rsocial.w1200.jpg",
      "title": "Pop"
    },
    {
      "image": "https://images.saymedia-content.com/.image/t_share/MTgzNjE1MzI5MDYxMTE5NzA1/best-modern-rock-bands.jpg",
      "title": "Rock"
    },
    {
      "image": "https://neonmusic.online/wp-content/uploads/2023/04/music-3264716_1280.jpg",
      "title": "Jazz"
    },
    {
      "image": "https://uproxx.com/wp-content/uploads/2018/02/hip-hop-grid-uproxx.jpg",
      "title": "Hip Hop"
    },
    {
      "image": "https://www.wideopencountry.com/wp-content/uploads/sites/4/2017/04/eric.jpg?fit=798%2C526",
      "title": "Country"
    },
    {
      "image": "https://c02.purpledshub.com/uploads/sites/43/2021/06/What-is-blues-music--1def93e.jpg",
      "title": "Blues"
    },
    {
      "image": "https://images.unsplash.com/photo-1624703307604-744ec383cbf4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Electronic"
    },
    {
      "image": "https://i.guim.co.uk/img/media/b34325085c62cb49ec9b528b5586696100cecfa9/0_0_4000_2667/master/4000.jpg?width=700&quality=85&auto=format&fit=max&s=c7d68dd52e6cefddb7df03822e2d7759",
      "title": "Classical"
    },
    {
      "image": "https://cdn.britannica.com/73/101873-050-D341E939/Bob-Marley-1978.jpg",
      "title": "Reggae"
    },
    {
      "image": "https://ichef.bbci.co.uk/images/ic/480xn/p06y1mg4.jpg",
      "title": "Folk"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text(
          "Search",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
        actions: [
          Container(
            // color: Colors.amber,
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle_rounded,
                  size: 40,
                )),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 50,
            width: 400,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color.fromARGB(255, 31, 31, 31)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  size: 30,
                  color: Color.fromARGB(255, 157, 157, 157),
                ),
                SizedBox(
                  // color: Colors.amber,
                  // margin: EdgeInsets.only(top: 10),
                  width: 280,
                  // height: 50,
                  child: TextField(
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Artits, Song, Lyrics and More',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.normal),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),
                Icon(
                  Icons.mic,
                  size: 30,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, top: 17),
            child: const Text(
              "Browse Catogories",
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 566.952 - 85, //may need to adjust acordingly
            child: GridView.builder(
              itemCount: BrowseCat.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // number of Rows in the grid
                childAspectRatio: 1.6, // ratio of Row width to row height
              ),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  // color: Colors.amber,
                  // height: 100,
                  // width: 200,
                  // padding: EdgeInsets.only(top: 5, left: 10),
                  child: Stack(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, left: 0, right: 0),
                        child: ClipPath(
                          clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Image.network(
                            BrowseCat[index]['image'],
                            height: 130,
                            width: 190,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Text(
                          BrowseCat[index]['title'],
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
