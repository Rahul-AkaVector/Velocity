import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 200,
        width: 400,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 215, 195, 249),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image(
            image: AssetImage(
                'assets/images/carousel_slider/carousel_image_00.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class CircularContainer extends StatelessWidget {
  const CircularContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
