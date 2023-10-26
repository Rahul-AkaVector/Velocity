import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:velocity/constants/constants.dart';
import 'package:velocity/models/course_list_model/course_list_model.dart';

class FirebaseFirestoreHelper {
  static FirebaseFirestoreHelper instance = FirebaseFirestoreHelper();
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<List<CourseListModel>> getBackendList() async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore
              .collectionGroup("courses")
              .where('tags', arrayContains: 'backend')
              .get();

      List<CourseListModel> courseList = querySnapshot.docs
          .map((e) => CourseListModel.fromJson(e.data()))
          .toList();
      return courseList;
    } catch (e) {
      showMessage(e.toString());
      print(e);
      return [];
    }
  }

  Future<List<CourseListModel>> getFrontendList() async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore
              .collectionGroup("courses")
              .where('tags', arrayContains: 'frontend')
              .get();

      List<CourseListModel> courseList = querySnapshot.docs
          .map((e) => CourseListModel.fromJson(e.data()))
          .toList();
      return courseList;
    } catch (e) {
      showMessage(e.toString());
      print(e);
      return [];
    }
  }
}
