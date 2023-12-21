import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/components/rect_imagecard.dart';

class EnSocial extends StatelessWidget {
   final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }
  EnSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Social",
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
            images: 'assets/images/en_social01.png',
           onCardTap: () {
              speak('How are you?');
            },
          
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_social02.png',
            
             onCardTap: () {
              speak('I am fine, thanks');
            },
            
          ),
          _buildRectImageCard(
            images: 'assets/images/en_social03.png',
           onCardTap: () {
              speak('Nice meeting you');
            },
            

          ),
          _buildRectImageCard(
            images: 'assets/images/en_social04.png',
           onCardTap: () {
              speak('Thank You');
            },
           
          ),
           _buildRectImageCard(
            images: 'assets/images/en_social05.png',
           onCardTap: () {
              speak('You are welcome');
            },
           
          ),
           _buildRectImageCard(
            images: 'assets/images/en_social06.png',
           onCardTap: () {
              speak('Please');
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
