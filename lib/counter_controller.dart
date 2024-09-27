import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;

  // Increment Counter
  void incrementCounter() {
    counter.value++;
    print("Incremented: ${counter.value}");
  }

  // Decrement Counter
  void decrementCounter() {
    if (counter.value > 0) {
      counter.value--;
      print("Decremented: ${counter.value}");
    }
  }
}
