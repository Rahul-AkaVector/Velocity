import 'package:flutter/material.dart';
// import 'package:velocity/constants/assets.dart';
import 'package:velocity/views/widgets/cards.dart';
import 'package:velocity/views/widgets/titles/section_title.dart';
import 'package:velocity/views/widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        // physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.shade100,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SectionTitle(title: "Continue.."),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RectangleBanner(),
                  RectangleBanner(),
                  RectangleBanner(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SectionTitle(title: "Trending"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SquareBanner(),
                  SquareBanner(),
                  SquareBanner(),
                  SquareBanner(),
                  SquareBanner(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SectionTitle(title: "Start Your Journey"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SquareBanner(),
                  SquareBanner(),
                  SquareBanner(),
                  SquareBanner(),
                  SquareBanner(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SectionTitle(title: "Explore Web Dev"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SquareBanner(),
                  SquareBanner(),
                  SquareBanner(),
                  SquareBanner(),
                  SquareBanner(),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
