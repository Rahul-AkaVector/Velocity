import 'package:flutter/material.dart';
import 'package:velocity/constants/assets.dart';
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
          SizedBox(
            height: 20,
          ),
          SectionTitle(title: "Explore Backend"),
          SizedBox(
            height: 130,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset(AssetsImages.instance.jsImage,
                                fit: BoxFit
                                    .cover // Ensure the image covers the entire area
                                ),
                          ),
                        ),
                
                        //text
                        SizedBox(
                          height: 15,
                        ),
                
                        SizedBox(
                          width: 79,
                          child: Text(
                            'Python Backend',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
