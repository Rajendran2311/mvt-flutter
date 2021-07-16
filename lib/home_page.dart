// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// import 'drawer.dart';
// // ignore: camel_case_types
// class Home_Page extends StatefulWidget {

//   final String title = "Video Demo";
//   @override
//   _Home_PageState createState() => _Home_PageState();
// }

// // ignore: camel_case_types
// class _Home_PageState extends State<Home_Page> {
//    late VideoPlayerController _controller;
//   // ignore: unused_field
//   late Future<void> _initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     _controller = VideoPlayerController.network(
//         "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",

//         );
//     //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
//     _initializeVideoPlayerFuture = _controller.initialize();
//     _controller.setLooping(true);
//     _controller.setVolume(1.0);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//       // appBar: AppBar(
//       //   title: Text(
//       //     'MVT',
//       //     style: TextStyle(color: Colors.orange),
//       //   ),
//       //   centerTitle: true,
//       //   //leading: Icon(Icons.dehaze_sharp,color: Colors.black,),
//       //   actions: [Icon(Icons.search, color: Colors.black)],
//       //   backgroundColor: Colors.white,
//       //   iconTheme: IconThemeData(color: Colors.black),
//       // ),
//       // drawer: MainDrawer(),

//        body: Container(
//             child: Column(children: [
//          AspectRatio(
//                 aspectRatio: _controller.value.aspectRatio,
//                 child: VideoPlayer(_controller),

//               ),
//               // ignore: deprecated_member_use
//               Center(child: RaisedButton(
//                 onPressed: (){
//                   setState(() {
//                     if (_controller.value.isPlaying){
//                       _controller.pause();
//                     }
//                     else
//                     {
//                       _controller.play();
//                     }
//                   });
//                 },
//                 child:Icon(_controller.value.isPlaying?Icons.pause:Icons.play_arrow ,),),
//               ),
//        ],
//        ),
//        ) ,
//       //  body: FutureBuilder(
//       //   future: _initializeVideoPlayerFuture,
//       //   builder: (context, snapshot) {
//       //     if (snapshot.connectionState == ConnectionState.done) {
//       //       return Center(
//       //         child: AspectRatio(
//       //           aspectRatio: _controller.value.aspectRatio,
//       //           child: VideoPlayer(_controller),
//       //         ),
//       //       );
//       //     } else {
//       //       return Center(
//       //         child: CircularProgressIndicator(),
//       //       );
//       //     }
//       //   },
//       // ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () {
//       //     setState(() {
//       //       if (_controller.value.isPlaying) {
//       //         _controller.pause();
//       //       } else {
//       //         _controller.play();
//       //       }
//       //     });
//       //   },
//       //   child:
//       //       Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
//       // ),
//     );
//   }
// }
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mvt/video_player_details/album_videos.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
];
late String vidUrl;
class Home_Page extends StatelessWidget {
  Function rrrr=(){
  
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                items: imgList
                    .map((item) => Container(
                          child: Center(
                            child: Ink.image(
                              image: NetworkImage(
                                item,
                              ),
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: () {
                                
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => AlbumVideos(vidUrl: vidUrl),));

                                },
                              ),
                            ),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
              ),
               // Mylist(),
               //ContentList(),
            ],
          ),
        ),
      ),
    );
  }
}
// ignore: must_be_immutable
class Mylist extends StatelessWidget {
  
List<Album_List> imgllist = [
  Album_List(
    urlname:'album',
     urll:'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  ),
   Album_List(
    urlname:'story',
     urll:'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80', 
  ),
   Album_List(
    urlname:'award',
     urll:'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  ),
];
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: Scaffold(
        
        body: Container(
          width:199,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16,right: 6),
            itemCount:imgList.length ,
            itemBuilder: (context,index){
              return Container(
                height: 199,
                width: 344,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),
                color: Colors.red,
                ),

              );
              // ListTile(
              //   title: Image.network(imgllist[index].urll),
              //   subtitle: Text(imgllist[index].urlname),
              // );
            }
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ContentList extends StatelessWidget {
// final List<String> list_of_AlbumSongs = [
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS19xm0Rcm2STTCA8Nabm30lkWYWrYYCcBoOw&usqp=CAU",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWqaNUkxQwARKGKwYzp_dwi7UQWAtrjp6Bkw&usqp=CAU",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOhSkdoj1RaMpwts1ZU3HAGQWps2IQt9jM3w&usqp=CAU",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA4lIOF9Io_CVG_tjfaYIkPQ4TOgOanuBYJA&usqp=CAU",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgqWW4gh0qOWRkvQNwkkvivFFAFwuJ_n0Uag&usqp=CAU"
//   ];
//   // ignore: non_constant_identifier_names
//   final List<String> title_of_AlbumSongs = [
//     "MIFF-2021",
//     "MMM",
//     'M 2020',
//     'MVT 2021',
//     'MVT'
//   ];

  late int index;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: 
     ListView(
       scrollDirection:Axis.horizontal ,
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('data'),
        ),
        MyList(),
      ],
    ),
    );
  }
}

// ignore: must_be_immutable
class MyList extends StatelessWidget {
 
 List<Album_List> imgList = [
  Album_List(
    urlname:'album',
     urll:'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  ),
   Album_List(
    urlname:'story',
     urll:'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80', 
  ),
   Album_List(
    urlname:'award',
     urll:'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  ),
];
  // 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  // 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',

  @override
  Widget build(BuildContext context) {
    return Container(width: 150,
    child:  ListView.separated(
      //scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: imgList.length, 
      separatorBuilder: (BuildContext context,int index)=>Divider(),
      itemBuilder: (context,int index){
        return  Container(
          width: 85.0,
          height: 110.0,
          child: Column(children: [
            
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Image.network(
                   imgList[index].urll,width: 80.0,height: 80.0,),
                subtitle: Text(imgList[index].urlname),
              ),
            ),
          ],),
        );
      } 
    ),
      );
    
    //  Container(
    //   height: 120,
    //   child: ListView(
    //     scrollDirection: Axis.horizontal,
    //     shrinkWrap: true,
    //     children: [
    //       Container(
    //         width: 150,
    //         child: InkWell(
    //           onTap: () {},
    //           child: ListTile(
    //             title: Image.network(
    //                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS19xm0Rcm2STTCA8Nabm30lkWYWrYYCcBoOw&usqp=CAU'),
    //             subtitle: Text('data'),
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}

// ignore: camel_case_types
class Album_List {
  late String urll;
  late String urlname;

  Album_List({required this.urll,required this.urlname});
}
