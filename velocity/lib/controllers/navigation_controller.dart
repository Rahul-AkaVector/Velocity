import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:velocity/views/screens/home/home.dart';
import 'package:velocity/views/screens/profile/profile.dart';
import 'package:velocity/views/screens/save/save.dart';
import 'package:velocity/views/screens/search/search.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Home(),
    const SearchPage(),
    const Save(),
    const Profile(),
  ];
}