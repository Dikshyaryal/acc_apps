import 'package:flutter/material.dart';

class RectImageCard extends StatelessWidget {
   const RectImageCard({
    Key? key,
    required this.images,
    required this.onCardTap,
  }) : super(key: key);

  final String images;

  final Function()? onCardTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onCardTap != null) {
          onCardTap!(); // Invoke the onCardTap callback if it's not null
        }

        // Add any additional logic you want to execute on tap
      },
      child: Card(
        // Your card content here
        child: Image.asset(
          images,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

