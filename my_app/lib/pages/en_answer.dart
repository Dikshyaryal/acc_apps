

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/components/rect_imagecard.dart';

class EnAnswer extends StatelessWidget {
   final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }
  EnAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Answers",
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
            images: 'assets/images/en_answers01.png',
           onCardTap: () {
              speak('Yes');
            },
          
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_answers02.png',
            
             onCardTap: () {
              speak('No');
            },
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_answers03.png',
           onCardTap: () {
              speak('I want it');
            },
            

          ),
          _buildRectImageCard(
            images: 'assets/images/en_answers04.png',
           onCardTap: () {
              speak('I dont want it');
            },
           
          ),
          _buildRectImageCard(
            images: 'assets/images/en_answers05.png',
         onCardTap: () {
              speak('I know it');
            },
          
           
          ),
          _buildRectImageCard(
            images: 'assets/images/en_answers06.png',
      
            
            onCardTap: () {
              speak('I dont know it');
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



