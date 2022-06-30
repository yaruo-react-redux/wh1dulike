import 'package:get/get.dart';

class AppController extends GetxController {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  set isBusy(bool value) {
    _isBusy = value;
    update();
  }

  int _pageIndex = 0;
  int get pageIndex => _pageIndex;
  set pageIndex(int value) {
    _pageIndex = value;
    update();
  }
}