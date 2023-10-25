import 'package:flutter/material.dart';
import 'package:velocity/constants/assets.dart';
import 'package:velocity/models/course_list_model/course_list_model.dart';
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
  // List<CourseListModel> coursesList = [];

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
          coursesList.isEmpty
              ? Center(
                  child: Text(
                    "Empty List",
                  ),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: coursesList
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10), // Same as Card's borderRadius
                              child: SizedBox(
                                height: 110,
                                width: 110,
                                // child: Image.asset(
                                //   AssetsImages.instance.jsImage,
                                //   fit: BoxFit
                                //       .fill, // Ensure the image covers the entire area
                                // ),
                                child: Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  child: Image.network(
                                    e.image,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
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
                  onTap: () {},
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

List<CourseListModel> coursesList = [
  CourseListModel(
      image: "https://img-c.udemycdn.com/course/480x270/2773488_8963.jpg",
      name: "Python"),
  CourseListModel(
      image:
          "https://user-images.githubusercontent.com/67586773/105040771-43887300-5a88-11eb-9f01-bee100b9ef22.png",
      name: "NumPy"),
  CourseListModel(
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/SCIPY_2.svg/1200px-SCIPY_2.svg.png",
      name: "SciPy"),
  CourseListModel(
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/OpenCV_Logo_with_text_svg_version.svg/1662px-OpenCV_Logo_with_text_svg_version.svg.png",
      name: "Open Cv"),
  CourseListModel(
      image:
          "https://verbose-equals-true.gitlab.io/django-postgres-vue-gitlab-ecs/django.jpg",
      name: "Django"),
  CourseListModel(
      image:
          "https://www.probytes.net/wp-content/uploads/2018/10/flask-logo-png-transparent.png",
      name: "Flask"),
];
