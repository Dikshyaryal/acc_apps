


import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/components/rect_imagecard.dart';

class EnGreeting extends StatelessWidget {
   final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }
  EnGreeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Greetings",
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
            images: 'assets/images/en_greetings01.png',
           onCardTap: () {
              speak('Hello');
            },
          
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_greetings02.png',
            
             onCardTap: () {
              speak('Good Morning');
            },
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_greetings03.png',
           onCardTap: () {
              speak('Good Afternoon');
            },
            

          ),
          _buildRectImageCard(
            images: 'assets/images/en_greetings04.png',
           onCardTap: () {
              speak('Good Evening');
            },
           
          ),
           _buildRectImageCard(
            images: 'assets/images/en_greetings05.png',
           onCardTap: () {
              speak('Good Night');
            },
           
          ),
           _buildRectImageCard(
            images: 'assets/images/en_greetings06.png',
           onCardTap: () {
              speak('Bye');
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
