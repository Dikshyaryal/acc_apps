// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/components/rect_imagecard.dart';

class EnAffection extends StatefulWidget {
  const EnAffection({Key? key}) : super(key: key);

  @override
  _EnAffectionState createState() => _EnAffectionState();
}

class _EnAffectionState extends State<EnAffection> {
  final FlutterTts flutterTts = FlutterTts();
  late Color _gradientStartColor;
  late Color _gradientEndColor;

  @override
  void initState() {
    super.initState();
    _gradientStartColor = Colors.blue;
    _gradientEndColor = Colors.purple;
  }

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }

  void _animateGradient() {
    setState(() {
      // Toggle between two gradient colors
      if (_gradientStartColor == Colors.blue) {
        _gradientStartColor = Colors.green;
        _gradientEndColor = Colors.yellow;
      } else {
        _gradientStartColor = Colors.blue;
        _gradientEndColor = Colors.purple;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Affection",
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [_gradientStartColor, _gradientEndColor],
          ),
        ),
        child: ListView(
          children: <Widget>[
            _buildRectImageCard(
              images: 'assets/images/en_affection01.png',
              onCardTap: () {
                speak('I love you');
              },
            ),
             _buildRectImageCard(
            images: 'assets/images/en_affection02.png',
            onCardTap: () {
              speak('Mom, I love you');
            },
          ),
          _buildRectImageCard(
            images: 'assets/images/en_affection03.png',
            onCardTap: () {
    
              speak('Dad,I love you');
            },
          ),
          _buildRectImageCard(
            images: 'assets/images/en_affection04.png',
            onCardTap: () {
              speak('I love my sister');
            },
          ),
          _buildRectImageCard(
            images: 'assets/images/en_affection05.png',
            onCardTap: () {
              speak('I love my brother');
            },
          ),
          _buildRectImageCard(
            images: 'assets/images/en_affection06.png',
            onCardTap: () {
              speak('I love my teacher');
            },
          ),

            // Animated gradient background
            _buildRectImageCard(
              images: 'assets/images/en_affection02.png',
              onCardTap: _animateGradient,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _animateGradient,
        backgroundColor: Colors.purple,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  // Helper method to create RectImageCard widget with common parameters
  Widget _buildRectImageCard({
    required String images,
    required VoidCallback onCardTap,
  }) {
    return InkWell(
      onTap: onCardTap,
      child: RectImageCard(
        images: images,
        onCardTap: onCardTap,
      ),
    );
  }
}


