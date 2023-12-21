import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/components/image_card.dart';
import 'package:my_app/pages/en_affection.dart';
import 'package:my_app/pages/en_answer.dart';
import 'package:my_app/pages/en_dontlike.dart';
import 'package:my_app/pages/en_greeting.dart';
import 'package:my_app/pages/en_like.dart';
import 'package:my_app/pages/en_social.dart';
import 'package:my_app/pages/en_wants.dart';
import 'package:my_app/pages/en_feeling.dart';

class EnMyTalk extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  // Corrected constructor syntax
   EnMyTalk({Key? key}) : super(key: key);

  Future<void> speak(String text) async {
    try {
      // Set language and speak the given text
      await flutterTts.setLanguage('en-US');
      await flutterTts.speak(text);
    } catch (e) {
      // Handle any errors that might occur during text-to-speech
      if (kDebugMode) {
        print('Error during text-to-speech: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'My Talk',
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          _buildImageCard('Greetings', 'assets/images/en_greeting.png',  EnGreeting()),
          _buildImageCard('Social', 'assets/images/en_social.png',   EnSocial()),
          _buildImageCard('Answer', 'assets/images/en_answer.png',   EnAnswer()),
          _buildImageCard('Affection', 'assets/images/en_affection.png', const EnAffection()),
          _buildImageCard('Feeling', 'assets/images/en_feeling.png',  EnFeeling()),
          _buildImageCard('Wants', 'assets/images/en_wants.png', EnWant()),
          _buildImageCard('I like', 'assets/images/en_like.png',  EnLike()),
          _buildImageCard('I dontlike', 'assets/images/en_dontlike.png', EnDontLike()),
        ],
      ),
    );
  }

  // Helper method to create ImageCard widget with common parameters
  Widget _buildImageCard(String text, String image, Widget page) {
    return ImageCard(

      page: page,
      image: image,
      images: '',
      onCardTap: () => speak(text), audioFile: '',
    );
  }
}






