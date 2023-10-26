import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity/constants/assets.dart';
import 'package:velocity/firebase/firebase_firestore_helper/firebase_firestore_helper.dart';
import 'package:velocity/models/course_list_model/course_list_model.dart';
// import 'package:velocity/constants/assets.dart';
import 'package:velocity/views/widgets/cards.dart';
import 'package:velocity/views/widgets/carousel_slider_widget.dart';
import 'package:velocity/views/widgets/titles/section_title.dart';
import 'package:velocity/views/widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int activeIndex = 0;
  // final urlImages = [
  //   'assets/images/carousel_slider/carousel_image_00.jpg',
  //   'assets/images/carousel_slider/carousel_image_01.jpg',
  //   'assets/images/carousel_slider/carousel_image_02.jpg',
  //   'assets/images/carousel_slider/carousel_image_03.jpg',
  //   'assets/images/carousel_slider/carousel_image_04.jpg'
  // ];

  // Widget buildIndicator() => AnimatedSmoothIndicator(
  //     effect: ExpandingDotsEffect(
  //         dotHeight: 11,
  //         dotWidth: 13,
  //         dotColor: Color.fromARGB(201, 255, 255, 255),
  //         activeDotColor: Color.fromARGB(255, 255, 255, 255)),
  //     activeIndex: activeIndex,
  //     count: urlImages.length);

  // Widget buildImage(String urlImage, int index) => Container(
  //       width: MediaQuery.of(context).size.width * 0.66,
  //       margin: EdgeInsets.symmetric(horizontal: 15),
  //       child: ClipRRect(
  //         borderRadius: BorderRadius.circular(35),
  //         child: Stack(
  //           children: [
  //             Image.asset(
  //               urlImage,
  //               fit: BoxFit.cover,
  //               height: 200,
  //               width: 300,
  //             ),
  //             Positioned.fill(
  //               child: Container(
  //                 padding: EdgeInsets.all(10),
  //                 color: const Color.fromARGB(0, 0, 0, 0),
  //                 child: Align(
  //                   alignment: Alignment.bottomCenter,
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     );

  List<CourseListModel> coursesList = [];
  bool isLoading = false;

  @override
  void initState() {
    getCategoryList();
    super.initState();
  }

  void getCategoryList() async {
    setState(() {
      isLoading = true;
    });

    coursesList = await FirebaseFirestoreHelper.instance.getList();
    coursesList.shuffle();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ),
          )
        : SingleChildScrollView(
            scrollDirection: Axis.vertical,
            // physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                // CarouselSlider.builder(
                //   itemCount: 5,
                //   itemBuilder: (context, index, realIndex) {
                //     final urlImage = urlImages[index];
                //     // final carouselText = carouselTexts[index];
                //     return buildImage(urlImage, index);
                //   },
                //   options: CarouselOptions(
                //       height: 300,
                //       onPageChanged: (index, reason) =>
                //           setState(() => activeIndex = index),
                //       autoPlay: true,
                //       autoPlayInterval: const Duration(seconds: 3),
                //       viewportFraction: 0.8),
                // ),

                CarouselSlider(items: [
                  CarouselSliderWidget(),
                ], options: CarouselOptions(height: 200)),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 5, 5),
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
                                  child: Image.asset(
                                      AssetsImages.instance.jsImage,
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
  // CourseListModel(
  //     image: "https://img-c.udemycdn.com/course/480x270/2773488_8963.jpg",
  //     name: "Python"),
  // CourseListModel(
  //     image:
  //         "https://user-images.githubusercontent.com/67586773/105040771-43887300-5a88-11eb-9f01-bee100b9ef22.png",
  //     name: "NumPy"),
  // CourseListModel(
  //     image:
  //         "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/SCIPY_2.svg/1200px-SCIPY_2.svg.png",
  //     name: "SciPy"),
  // CourseListModel(
  //     image:
  //         "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/OpenCV_Logo_with_text_svg_version.svg/1662px-OpenCV_Logo_with_text_svg_version.svg.png",
  //     name: "Open Cv"),
  // CourseListModel(
  //     image:
  //         "https://verbose-equals-true.gitlab.io/django-postgres-vue-gitlab-ecs/django.jpg",
  //     name: "Django"),
  // CourseListModel(
  //     image:
  //         "https://www.probytes.net/wp-content/uploads/2018/10/flask-logo-png-transparent.png",
  //     name: "Flask"),
];
