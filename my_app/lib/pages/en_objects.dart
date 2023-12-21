import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/components/inner_imagecard.dart';

class EnObjects extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }

  EnObjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Objects",
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
            images: 'assets/images/en_objects01.png',
            onCardTap: () {
              speak('Table');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_objects02.png',
            onCardTap: () {
              speak('Chair');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_objects03.png',
            onCardTap: () {
              speak('Bed');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_objects04.png',
            onCardTap: () {
              speak('Bench');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_objects05.png',
            onCardTap: () {
              speak('Shoes');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_objects06.png',
            onCardTap: () {
              speak('Ball');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_objects07.png',
            onCardTap: () {
              speak('Bag');
            },
          ),
         
          _buildInnerImageCard(
            images: 'assets/images/en_objects09.png',
            onCardTap: () {
              speak('Cycle');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/en_objects10.png',
            onCardTap: () {
              speak('Bus');
            },
          ),
           _buildInnerImageCard(
            images: 'assets/images/en_objects11.png',
            onCardTap: () {
              speak('Car');
            },
          ),
           _buildInnerImageCard(
            images: 'assets/images/en_objects12.png',
            onCardTap: () {
              speak('Scooter');
            },
          ),
           _buildInnerImageCard(
            images: 'assets/images/en_objects13.png',
            onCardTap: () {
              speak('Pen');
            },
          ),
           _buildInnerImageCard(
            images: 'assets/images/en_objects14.png',
            onCardTap: () {
              speak('Pencil');
            },
          ),
           _buildInnerImageCard(
            images: 'assets/images/en_objects15.png',
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


