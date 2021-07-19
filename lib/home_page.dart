import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mvt/video_player_details/album_videos.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
];
late String vidUrl;

// ignore: camel_case_types
class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

// ignore: camel_case_types
class _Home_PageState extends State<Home_Page> {
  final ScrollController _controllerOne = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _controllerOne,
      isAlwaysShown: true,
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
                                  builder: (context) =>
                                      AlbumVideos(vidUrl: vidUrl),
                                ));
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
            MyList(),
          ],
        ),
      ),
    );
  }
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  //final ScrollController _controllerOne = ScrollController();
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
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
                            width: 100,
                            height: 130,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

   
//  Container(
//         width: 100,
//         height: 200,
//         color: Colors.grey,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Center(
//             child: Text("raj"),
//           ),
//         ),
//       );
// // ignore: must_be_immutable
// class Mylist extends StatelessWidget {
//   List<Album_List> imgllist = [
//     Album_List(
//       urlname: 'album',
//       urll:
//           'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//     ),
//     Album_List(
//       urlname: 'story',
//       urll:
//           'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//     ),
//     Album_List(
//       urlname: 'award',
//       urll:
//           'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           width: 199,
//           child: ListView.builder(
//               shrinkWrap: true,
//               scrollDirection: Axis.horizontal,
//               padding: EdgeInsets.only(left: 16, right: 6),
//               itemCount: imgList.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   height: 199,
//                   width: 344,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(28),
//                     color: Colors.red,
//                   ),
//                 );
//                 // ListTile(
//                 //   title: Image.network(imgllist[index].urll),
//                 //   subtitle: Text(imgllist[index].urlname),
//                 // );
//               }),
//         ),
//       ),
//     );
//   }
// }

// // ignore: must_be_immutable
// class ContentList extends StatelessWidget {
//   late int index;
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Text('data'),
//           ),
//           MyList(),
//         ],
//       ),
//     );
//   }
// }

// // ignore: must_be_immutable
// class MyList extends StatelessWidget {
//   List<Album_List> imgList = [
//     Album_List(
//       urlname: 'album',
//       urll:
//           'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//     ),
//     Album_List(
//       urlname: 'story',
//       urll:
//           'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//     ),
//     Album_List(
//       urlname: 'award',
//       urll:
//           'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 150,
//       child: ListView.separated(
//           //scrollDirection: Axis.horizontal,
//           shrinkWrap: true,
//           itemCount: imgList.length,
//           separatorBuilder: (BuildContext context, int index) => Divider(),
//           itemBuilder: (context, int index) {
//             return Container(
//               width: 85.0,
//               height: 110.0,
//               child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {},
//                     child: ListTile(
//                       title: Image.network(
//                         imgList[index].urll,
//                         width: 80.0,
//                         height: 80.0,
//                       ),
//                       subtitle: Text(imgList[index].urlname),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }),
//     );
//   }
// }

// // ignore: camel_case_types
// class Album_List {
//   late String urll;
//   late String urlname;

//   Album_List({required this.urll, required this.urlname});
// }
