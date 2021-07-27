import 'package:flutter/material.dart';
import 'package:mvt/interview_page.dart';

import 'package:mvt/video_player_details/album_videos.dart';

// ignore: must_be_immutable
class InterviewVideos extends StatelessWidget {
  InterviewVideos( {Key? key}) : super(key: key);

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
      appBar: AppBar(
        title: Text(
          'INTERVIEW',
          style: TextStyle(color: Colors.orange),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
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
                            title_of_interview[
                                index % title_of_interview.length],
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
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
