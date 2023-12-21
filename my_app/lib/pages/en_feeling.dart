

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/components/rect_imagecard.dart';

class EnFeeling extends StatelessWidget {
   final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }
  EnFeeling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Feelings",
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
            images: 'assets/images/en_feelings01.png',
           onCardTap: () {
              speak('I am happy');
            },
          
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_feelings02.png',
            
             onCardTap: () {
              speak('I am sad');
            },
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_feelings03.png',
           onCardTap: () {
              speak('I am sick');
            },
            

          ),
          _buildRectImageCard(
            images: 'assets/images/en_feelings04.png',
           onCardTap: () {
              speak('I am angry');
            },
           
          ),
          _buildRectImageCard(
            images: 'assets/images/en_feelings05.png',
         onCardTap: () {
              speak('I am tired');
            },
          
           
          ),
          _buildRectImageCard(
            images: 'assets/images/en_feelings06.png',
      
            
            onCardTap: () {
              speak('I am afraid');
            },
          ),
            _buildRectImageCard(
            images: 'assets/images/en_feelings07.png',
      
            
            onCardTap: () {
              speak('I am hungry');
            },
          ),
            _buildRectImageCard(
            images: 'assets/images/en_feelings08.png',
      
            
            onCardTap: () {
              speak('I am bored');
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