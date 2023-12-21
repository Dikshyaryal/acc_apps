
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.image,
    required this.page,
    required String images,
    required this.audioFile,
    this.onCardTap,
  }) : super(key: key);

  final String image;
  final Widget page;
  final String audioFile;
  final Function()? onCardTap; // Define onCardTap as a nullable function

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onCardTap != null) {
          onCardTap!(); // Invoke the onCardTap callback if it's not null
        }

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: Card(
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}


