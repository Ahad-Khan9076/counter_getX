import 'package:counter_getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display Counter Value
            Obx(() {
              return Text(
                controller.counter.toString(),
                style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
            const SizedBox(height: 20),

            // Increment and Decrement Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Decrement Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: Colors.redAccent,
                    shape: const CircleBorder(),
                  ),
                  onPressed: () {
                    controller.decrementCounter();
                  },
                  child: const Icon(Icons.remove, size: 30, color: Colors.white),
                ),
                const SizedBox(width: 30), // Spacing between buttons

                // Increment Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: Colors.greenAccent,
                    shape: const CircleBorder(),
                  ),
                  onPressed: () {
                    controller.incrementCounter();
                  },
                  child: const Icon(Icons.add, size: 30, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
