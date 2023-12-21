import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/components/inner_imagecard.dart';

class EnAlphabet extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }

  EnAlphabet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Alphabet",
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
            images: 'assets/images/a.png',
            onCardTap: () {
              speak('a for apple');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/b.png',
            onCardTap: () {
              speak('b for ball');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/c.png',
            onCardTap: () {
              speak('c for cat');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/d.png',
            onCardTap: () {
              speak('d for dog');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/e.png',
            onCardTap: () {
              speak('e for eye');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/f.png',
            onCardTap: () {
              speak('f for fish');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/g.png',
            onCardTap: () {
              speak('g for goat');
            },
          ),
         
          _buildInnerImageCard(
            images: 'assets/images/h.png',
            onCardTap: () {
              speak('h for hen');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/i.png',
            onCardTap: () {
              speak('i for ice-cream');
            },
          ),
           _buildInnerImageCard(
            images: 'assets/images/j.png',
            onCardTap: () {
              speak('j for jeep');
            },
          ),
           _buildInnerImageCard(
            images: 'assets/images/k.png',
            onCardTap: () {
              speak('k for kite');
            },
          ),
           _buildInnerImageCard(
            images: 'assets/images/l.png',
            onCardTap: () {
              speak('l for lion');
            },
          ),
           _buildInnerImageCard(
            images: 'assets/images/m.png',
            onCardTap: () {
              speak('m for mango');
            },
          ),
           _buildInnerImageCard(
            images: 'assets/images/n.png',
            onCardTap: () {
              speak('n for nose');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/o.png',
            onCardTap: () {
              speak('o for orange');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/p.png',
            onCardTap: () {
              speak('p for papaya');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/q.png',
            onCardTap: () {
              speak('q for queen');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/r.png',
            onCardTap: () {
              speak('r for rabbit');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/s.png',
            onCardTap: () {
              speak('s for ship');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/t.png',
            onCardTap: () {
              speak('t for tiger');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/u.png',
            onCardTap: () {
              speak('u for umbrella');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/v.png',
            onCardTap: () {
              speak('v for van');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/w.png',
            onCardTap: () {
              speak('w for wool');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/x.png',
            onCardTap: () {
              speak('x for x-ray');
            },
          ),
          _buildInnerImageCard(
            images: 'assets/images/y.png',
            onCardTap: () {
              speak('y for yoga');
            },
          ),
                    _buildInnerImageCard(
            images: 'assets/images/z.png',
            onCardTap: () {
              speak('z for zebra');
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




