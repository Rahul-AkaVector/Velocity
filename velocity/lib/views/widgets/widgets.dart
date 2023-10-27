import 'package:flutter/material.dart';
import 'package:velocity/constants/assets.dart';

class RectangleBanner extends StatelessWidget {
  const RectangleBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Same as Card's borderRadius
        child: SizedBox(
          height: 120,
          width: 200,
          child: Image.asset(
            TestImage.instance.jsImage,
            fit: BoxFit.fitWidth, // Ensure the image covers the entire area
          ),
        ),
      ),
    );
  }
}
