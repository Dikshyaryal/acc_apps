


import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/components/rect_imagecard.dart';

class EnLike extends StatelessWidget {
   final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }
  EnLike({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Likes",
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFF3F3F3),
      body: ListView(
        children: <Widget>[
          RectImageCard(
            images: 'assets/images/en_likes01.png',
           onCardTap: () {
              speak('I like music');
            },
          
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_likes02.png',
            
             onCardTap: () {
              speak('I like to dance');
            },
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_likes03.png',
           onCardTap: () {
              speak('I like to be alone');
            },
            

          ),
          _buildRectImageCard(
            images: 'assets/images/en_likes04.png',
           onCardTap: () {
              speak('I like computer');
            },
           
          ),
          
          
        ],
      ),
    );
  }
}
Widget _buildRectImageCard({
    required String images,
    required VoidCallback onCardTap,
  }) {
    return RectImageCard(
      images: images,
      onCardTap: onCardTap,
    );
  }