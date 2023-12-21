


import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/components/rect_imagecard.dart';

class EnDontLike extends StatelessWidget {
   final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }
  EnDontLike({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Don't Like",
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
            images: 'assets/images/en_dontlike01.png',
           onCardTap: () {
              speak('I dont like noise');
            },
          
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_dontlike02.png',
            
             onCardTap: () {
              speak('I dont like music');
            },
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_dontlike03.png',
           onCardTap: () {
              speak('I dont like to play');
            },
            

          ),
          _buildRectImageCard(
            images: 'assets/images/en_dontlike04.png',
           onCardTap: () {
              speak('I dont like to write');
            },
           
          ),
           _buildRectImageCard(
            images: 'assets/images/en_dontlike05.png',
           onCardTap: () {
              speak('I dont like to read');
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
