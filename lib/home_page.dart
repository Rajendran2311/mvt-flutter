import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mvt/video_player_details/album_videos.dart';

import 'channels_details/album_songs.dart';
import 'channels_details/award_show.dart';
import 'channels_details/interview_videos.dart';
import 'channels_details/padcast_videos.dart';
import 'channels_details/short_stories.dart';

// ignore: camel_case_types
// ignore: must_be_immutable
class Home_Page extends StatelessWidget {
  Home_Page({Key? key}) : super(key: key);
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  ];
  late String vidUrl;

  // void currentVideos(BuildContext context, index) {
  //   if (index == 0) {
  //     String uri =
  //         'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4';
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => AlbumVideos(vidUrl: uri),
  //       ),
  //     );
  //   }
  //   if (index == 1) {
  //     String uri =
  //         'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4';
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => AlbumVideos(vidUrl: uri),
  //       ),
  //     );
  //   }
  //   if (index == 3) {
  //     String uri =
  //         'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4';
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => AlbumVideos(vidUrl: uri),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              items: imgList.map(
                (item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        child: Center(
                          child: Ink.image(
                            image: NetworkImage(
                              item,
                            ),
                            fit: BoxFit.cover,
                            child: InkWell(
                              onTap: () {
                                print('rrr$item');
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ).toList(),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
            ),
            MyList(),
          ],
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  MyList({Key? key}) : super(key: key);
// ignore: non_constant_identifier_names
  final List<String> list_of_videos = [
    "ALBUM SONGS",
    "SHORT STORIES",
    "AWARD SHOW 2019",
    "INTERVIEWS",
    "PODCAST"
  ];
  // ignore: non_constant_identifier_names
  final List<String> network_images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5z8-3WshCsE_BWkuj0CSCR3MVTC1WsA8RfA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ6wfHdYsY-0aLx-XVhhtURCs65sGi78wHNg&usqp=CAU",
    "https://media.istockphoto.com/photos/vertical-line-blur-background-picture-id859002590?k=6&m=859002590&s=170667a&w=0&h=RkDcaJ_EaWiC5gdMpQMWmSsQvMiXPB-2R1k1-RswZAg=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ6wfHdYsY-0aLx-XVhhtURCs65sGi78wHNg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5z8-3WshCsE_BWkuj0CSCR3MVTC1WsA8RfA&usqp=CAU"
  ];
  void relatedvideo(BuildContext context, index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Album_Songs_List(index),
        ),
      );
    }
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShortStories_List(index),
        ),
      );
    }
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Award_Show(index),
        ),
      );
    }
    if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InterviewVideos(index),
        ),
      );
    }
    if (index == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PadcastVideos(index),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(4),
            color: Colors.white,
            margin: EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Text(
              'Channels',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(left: 8, right: 8),
            height: 160,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list_of_videos.length,
                itemBuilder: (context, index) {
                  return Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      GestureDetector(
                        onTap: () {
                          relatedvideo(context, index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Card(
                            color: Colors.black54,
                            child: Column(
                              children: [
                                Image.network(
                                  network_images[index % network_images.length],
                                  width: 95,
                                  height: 145,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        child: Text(
                          list_of_videos[index % list_of_videos.length],
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          CourseList(),
        ],
      ),
    );
  }
}

class CourseList extends StatelessWidget {
  const CourseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(4),
            color: Colors.white,
            margin: EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Text(
              'Continue Watching',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Colors.grey[400],
            margin: EdgeInsets.only(left: 8, right: 8),
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5z8-3WshCsE_BWkuj0CSCR3MVTC1WsA8RfA&usqp=CAU',
                          width: 100,
                          height: 130,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
