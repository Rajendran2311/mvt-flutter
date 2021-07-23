import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:mvt/interview_page.dart';
import 'package:mvt/video_player_details/relatedvideos.dart';

class AlbumVideos extends StatelessWidget {
  final RelatedVidoes data;

  const AlbumVideos({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: BetterPlayer.network(
                  data.vidUrl,
                  betterPlayerConfiguration: BetterPlayerConfiguration(
                      aspectRatio: 16 / 9, autoPlay: false),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Text('RAJ'),

              RelatedVideos(
                playNext1: data.relatedUrl1,
                playvideo: data.vidUrl,
                playNext2: data.relatedUrl2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
