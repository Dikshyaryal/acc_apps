
import 'package:flutter/material.dart';
class InnerImageCard extends StatelessWidget {
  final String images;
  final VoidCallback onCardTap; // Change the type here

  const InnerImageCard({
    required this.images,
    required this.onCardTap,
   Key? key, required String image,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardTap, // No need to pass 'image' here if it's not used
      child: Image.asset(images),
        // Your card implementation
      
    );
  }
}




