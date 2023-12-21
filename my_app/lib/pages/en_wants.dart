


import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/components/rect_imagecard.dart';

class EnWant extends StatelessWidget {
   final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }
  EnWant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "I want",
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
            images: 'assets/images/en_wants01.png',
           onCardTap: () {
              speak('I want to eat');
            },
          
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_wants02.png',
            
             onCardTap: () {
              speak('I want to drink water');
            },
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_wants03.png',
           onCardTap: () {
              speak('I want to play');
            },
            

          ),
          _buildRectImageCard(
            images: 'assets/images/en_wants04.png',
           onCardTap: () {
              speak('I want to sleep');
            },
           
          ),
           _buildRectImageCard(
            images: 'assets/images/en_wants05.png',
           onCardTap: () {
              speak('I want to go to the toilet');
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
