import 'package:flutter/material.dart';
import 'package:mvt/interview_page.dart';
import 'package:mvt/video_player_details/album_videos.dart';

// ignore: must_be_immutable
class RelatedVideos extends StatelessWidget {
  late String playNext1;
  late String playvideo;
  late String playNext2;
  RelatedVideos(
      {Key? key,
      required this.playNext1,
      required this.playvideo,
      required this.playNext2})
      : super(key: key);
// ignore: non_constant_identifier_names
  final List<String> list_of_AlbumSongs = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS19xm0Rcm2STTCA8Nabm30lkWYWrYYCcBoOw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgqWW4gh0qOWRkvQNwkkvivFFAFwuJ_n0Uag&usqp=CAU"
  ];
  void currentVideo(BuildContext context, index) {
    if (index == 0) {
      final data = RelatedVidoes(
        vidUrl: playNext1,
        relatedUrl1: playNext2,
        relatedUrl2: playvideo,
      );

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AlbumVideos(data: data),
        ),
      );
    }
    if (index == 1) {
      final data = RelatedVidoes(
        vidUrl: playNext2,
        relatedUrl1: playNext1,
        relatedUrl2: playvideo,
      );

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
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(4),
            color: Colors.white,
            margin: EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Text(
              'Related Videos',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(left: 8, right: 8),
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        currentVideo(context, index);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Image.network(
                                list_of_AlbumSongs[
                                    index % list_of_AlbumSongs.length],
                                width: 150,
                                height: 100,
                              ),
                              Text(
                                'Album videos',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
