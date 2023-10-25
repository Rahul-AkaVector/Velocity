import 'dart:convert';

CourseListModel courseListModelFromJson(String str) =>
    CourseListModel.fromJson(json.decode(str));

String courseListModelToJson(CourseListModel data) => json.encode(data.toJson());

class CourseListModel {
  CourseListModel({
    required this.image,
    required this.name,
  });

  String image;
  String name;


  factory CourseListModel.fromJson(Map<String, dynamic> json) => CourseListModel(
        image: json["image"],
        name: json["name"],

      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
      };
}