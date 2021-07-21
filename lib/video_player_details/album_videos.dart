import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class AlbumVideos extends StatelessWidget {
  final String vidUrl;
  const AlbumVideos({Key? key, required this.vidUrl}) : super(key: key);

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
                  vidUrl,
                  betterPlayerConfiguration: BetterPlayerConfiguration(
                      aspectRatio: 16 / 9, autoPlay: false),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('RAJ'),
              RelatedVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class RelatedVideos extends StatelessWidget {
  const RelatedVideos({Key? key}) : super(key: key);

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
              itemCount: 4,
              itemBuilder: (context, index) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('rajjj$index');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd6vp_1wkyH_s2NhWlFHQEN69LeUSggGJerw&usqp=CAU',
                                width: 150,
                                height: 100,
                              ),
                              Text('Album videos',style: TextStyle(fontSize: 20),),
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
