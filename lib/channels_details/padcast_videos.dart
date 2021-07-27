import 'package:flutter/material.dart';


class PadcastVideos extends StatelessWidget {
  const PadcastVideos( { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'PADCAST',
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
       body: Center(child: Text('No data available'),),
      
    );
  }
}