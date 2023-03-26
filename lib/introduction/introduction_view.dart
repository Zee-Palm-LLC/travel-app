import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/checkpoint/checkpoint.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg.jpg'), fit: BoxFit.fill)),
          child: Container(
            color: Colors.black.withOpacity(0.5),
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Icon(Icons.location_on_outlined,
                    color: Colors.white, size: 80),
                const Text("JAPAN",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 80)),
                const Text("Checkpoint",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25)),
                const Spacer(),
                SizedBox(
                  height: 100,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 70,
                        width: double.maxFinite,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: Colors.black26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Discover Trending",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Checkpoint in Japan",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(()=> CheckpointView());
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                              ),
                              backgroundColor: Colors.red
                            ),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          )),
    );
  }
}
