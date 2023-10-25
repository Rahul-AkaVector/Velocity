import 'dart:convert';

CourseListModel courseListModelFromJson(String str) =>
    CourseListModel.fromJson(json.decode(str));

String courseListModelToJson(CourseListModel data) =>
    json.encode(data.toJson());

class CourseListModel {
  CourseListModel({
    required this.id,
    required this.courseName,
    required this.image,
    required this.tags,
  });

  String id;
  String courseName;
  String image;
  List<String> tags;

  factory CourseListModel.fromJson(Map<String, dynamic> json) =>
      CourseListModel(
        id: json["id"],
        image: json["image"],
        courseName: json["course_name"],
        tags: List<String>.from(json['tags']),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "course_name": courseName,
        "tags": tags,
      };
}
