import 'package:get/get.dart';

class Click {
  RxInt clickCount = 0.obs;

  Click({required int clicks}) {
    clickCount.value = clicks;
  }

  void increment() => clickCount++;
  void decrement() => clickCount > 0 ? clickCount-- : null;
}
