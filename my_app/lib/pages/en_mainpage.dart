import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/pages/en_mytalk.dart';
import 'package:my_app/pages/en_alphabet.dart';
import 'package:my_app/pages/en_numbers.dart';
import 'package:my_app/pages/en_objects.dart';
import 'package:my_app/components/image_card.dart';

class EnMainPage extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }

   EnMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ... (rest of your code)

      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          ImageCard(
            page: EnMyTalk(),
            image: 'assets/images/en_mytalk.png',
            images: '',
            audioFile: 'assets/sounds/en_mytalk.mp3',
            onCardTap: () => speak('My Talk'), // Add TTS here
          ),
          ImageCard(
            page:  EnAlphabet(),
            image: 'assets/images/en_alphabet.png',
            images: '',
            audioFile: 'assets/sounds/en_alphabet.mp3',
            onCardTap: () => speak('Alphabet'), // Add TTS here
          ),
          ImageCard(
            page:  EnNumbers(),
            image: 'assets/images/en_numbers.png',
            images: '',
            audioFile: 'assets/sounds/en_numbers.mp3',
            onCardTap: () => speak('Numbers'), // Add TTS here
          ),
          ImageCard(
            page:  EnObjects(),
            image: 'assets/images/en_objects.png',
            images: '',
            audioFile: 'assets/sounds/en_objects.mp3',
            onCardTap: () => speak('Objects'), // Add TTS here
          ),
        ],
      ),
    );
  }
}



