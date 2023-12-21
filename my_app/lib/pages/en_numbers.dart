import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/components/inner_imagecard.dart';

class EnNumbers extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }

  EnNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Numbers",
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
          _buildInnerImageCard(
            images: 'assets/images/en_one.png',
            onCardTap: () {
              speak('One');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_two.png',
            onCardTap: () {
              speak('Two');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_three.png',
            onCardTap: () {
              speak('Three');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_four.png',
            onCardTap: () {
              speak('Four');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_five.png',
            onCardTap: () {
              speak('Five');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_six.png',
            onCardTap: () {
              speak('Six');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_seven.png',
            onCardTap: () {
              speak('Seven');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_eight.png',
            onCardTap: () {
              speak('Eight');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_nine.png',
            onCardTap: () {
              speak('Nine');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_ten.png',
            onCardTap: () {
              speak('Ten');
            },
          ),
        ],
      ),
    );
  }

  // Helper method to create RectImageCard widget with common parameters
  Widget _buildInnerImageCard({
    required String images,
    required VoidCallback onCardTap,
  }) {
    return InnerImageCard(
      images: images,
      onCardTap: onCardTap, image: '',
    );
  }
}


