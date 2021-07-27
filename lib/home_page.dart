import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'channels_details/album_songs.dart';
import 'channels_details/award_show.dart';
import 'channels_details/interview_videos.dart';
import 'channels_details/padcast_videos.dart';
import 'channels_details/short_stories.dart';
import 'interview_page.dart';
import 'video_player_details/album_videos.dart';

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
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
                itemCount: imgList.length,
                itemBuilder: (BuildContext context, int index,
                        int pageViewIndex) =>
                    Container(
                      child: Center(
                        child: Ink.image(
                          image: NetworkImage(imgList[index % imgList.length]),
                          fit: BoxFit.cover,
                          child: InkWell(
                            onTap: () {
                              currentVideo(context, index);
                            },
                          ),
                        ),
                      ),
                    ),
                options: CarouselOptions(
                    autoPlay: true, aspectRatio: 2.0, enlargeCenterPage: true)),
            MyList(),
            CourseList(),
            HomePageInterview(),
            HomePageAwardShow(),
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
          builder: (context) => Album_Songs_List(),
        ),
      );
    }
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShortStories_List(),
        ),
      );
    }
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Award_Show(),
        ),
      );
    }
    if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InterviewVideos(),
        ),
      );
    }
    if (index == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PadcastVideos(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return
        // ListView(
        //   shrinkWrap: true,
        //   children: [
        Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(4),
          color: Colors.white,
          margin: EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Channels',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                shape: StadiumBorder(),
                color: Colors.orangeAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Album_Songs_List()),
                  );
                },
                child: Text(
                  'View All',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
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
      ],
    );
  }
}

class CourseList extends StatelessWidget {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  ];
  final List<String> imgName = [
    'Unnai Ninaithu | Tamil',
    'Thadaigal | Tamil',
    'Friend Ship Album'
  ];

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
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(4),
          color: Colors.white,
          margin: EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Continue Watching',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(left: 8, right: 8),
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imgList.length,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        currentVideo(context, index);
                        print('object$index');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Image.network(
                                imgList[index % imgList.length],
                                width: 150,
                                height: 100,
                              ),
                              Text(
                                imgName[index % imgName.length],
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 40,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class HomePageInterview extends StatelessWidget {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  ];
  final List<String> imgName = [
    'Unnai Ninaithu | Tamil',
    'Thadaigal | Tamil',
    'Friend Ship Album'
  ];

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
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(4),
          color: Colors.white,
          margin: EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Interviews',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                shape: StadiumBorder(),
                color: Colors.orangeAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InterviewVideos()),
                  );
                },
                child: Text(
                  'View All',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(left: 8, right: 8),
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imgList.length,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        currentVideo(context, index);
                        print('object$index');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Image.network(
                                imgList[index % imgList.length],
                                width: 150,
                                height: 100,
                              ),
                              Text(
                                imgName[index % imgName.length],
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 40,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class HomePageAwardShow extends StatelessWidget {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  ];
  final List<String> imgName = ['Best Actor', 'Best Actress', 'Best Villian'];

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
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(4),
          color: Colors.white,
          margin: EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Award Show 2019',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                shape: StadiumBorder(),
                color: Colors.orangeAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Award_Show()),
                  );
                },
                child: Text(
                  'View All',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(left: 8, right: 8),
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imgList.length,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        currentVideo(context, index);
                        print('object$index');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Image.network(
                                imgList[index % imgList.length],
                                width: 150,
                                height: 100,
                              ),
                              Text(
                                imgName[index % imgName.length],
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 40,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
