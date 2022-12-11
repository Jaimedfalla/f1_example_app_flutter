import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lewis Hamilton'),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 5
            ),
            child: const CircleAvatar(
              backgroundColor: Color(0xFFF35D5D),
              child: Text('LH')
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
            'https://cdn-3.motorsport.com/images/mgl/0mb95oa2/s800/lewis-hamilton-mercedes-1.jpg'
          ),
         ),
      ),
    );
  }
}