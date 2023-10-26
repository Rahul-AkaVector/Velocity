import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity/views/widgets/carousel_slider_widget.dart';
import 'package:velocity/controllers/carousel_controller.dart';

class HomeSlider extends StatelessWidget {
  final List<String> banners;

  const HomeSlider({
    super.key,
    required this.banners,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => CarouselSliderWidget(url: url)).toList(),
          // [
          // CarouselSliderWidget(
          //   url: 'assets/images/carousel_slider/carousel_image_00.jpg',
          // ),
          // CarouselSliderWidget(
          //   url: 'assets/images/carousel_slider/carousel_image_01.jpg',
          // ),
          // CarouselSliderWidget(
          //   url: 'assets/images/carousel_slider/carousel_image_02.jpg',
          // ),
          // CarouselSliderWidget(
          //   url: 'assets/images/carousel_slider/carousel_image_03.jpg',
          // ),
          // CarouselSliderWidget(
          //   url: 'assets/images/carousel_slider/carousel_image_04.jpg',
          // ),
          // ],
          options: CarouselOptions(
            height: 200,
            viewportFraction: 0.9,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CircularContainer(
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? const Color.fromARGB(255, 201, 202, 221)
                        : Color.fromARGB(255, 118, 119, 129),
                    margin: const EdgeInsets.only(right: 10),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
