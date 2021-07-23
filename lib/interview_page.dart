import 'package:flutter/material.dart';

import 'video_player_details/album_videos.dart';

// ignore: camel_case_types
class Interview_Page extends StatefulWidget {
  @override
  _Interview_PageState createState() => _Interview_PageState();
}

// ignore: camel_case_types
class _Interview_PageState extends State<Interview_Page> {
// ignore: non_constant_identifier_names
  final List<String> list_of_interviews = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS19xm0Rcm2STTCA8Nabm30lkWYWrYYCcBoOw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWqaNUkxQwARKGKwYzp_dwi7UQWAtrjp6Bkw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOhSkdoj1RaMpwts1ZU3HAGQWps2IQt9jM3w&usqp=CAU",
  ];
  // ignore: non_constant_identifier_names
  final List<String> title_of_interview = [
    "MIFF-2021",
    "MMM",
    'M 2020',
  ];
  // late String vidUrl;
  // late String relatedUrl1;
  void currentVideo(BuildContext context, index) {
    if (index == 0) {
      final data = RelatedVidoes(
          vidUrl:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
          relatedUrl1:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
          relatedUrl2:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AlbumVideos(data: data),
        ),
      );
    }
    if (index == 1) {
      final data = RelatedVidoes(
          vidUrl:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
          relatedUrl1:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
          relatedUrl2:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AlbumVideos(data: data),
        ),
      );
    }
    if (index == 2) {
      final data = RelatedVidoes(
          vidUrl:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
          relatedUrl1:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
          relatedUrl2:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AlbumVideos(data: data),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //     title: Text(
      //       'MVT',
      //       style: TextStyle(color: Colors.orange),
      //     ),
      //     centerTitle: true,
      //     //leading: Icon(Icons.dehaze_sharp,color: Colors.black,),
      //     actions: [Icon(Icons.search, color: Colors.black)],
      //     backgroundColor: Colors.white,
      //     iconTheme: IconThemeData(color: Colors.black),
      //   ),
      //   drawer: MainDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(20))),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30)),
                                height: 110,
                                child: Ink.image(
                                  image: NetworkImage(
                                    list_of_interviews[
                                        index % list_of_interviews.length],
                                  ),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      currentVideo(context, index);
                                    },
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 40.0,
                              ),
                            ],
                          )),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: new Text(
                          title_of_interview[index % title_of_interview.length],
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: list_of_interviews.length,
            ),
          ),
        ],
      ),
    );
  }
}

class RelatedVidoes {
  late String vidUrl;
  late String relatedUrl1;
  late String relatedUrl2;
  RelatedVidoes(
      {required this.relatedUrl1,
      required this.vidUrl,
      required this.relatedUrl2});
}
