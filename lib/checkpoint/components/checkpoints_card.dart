import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CheckpointsCard extends StatelessWidget {
  final String image;
  final String distance;
  final String cityName;

  const CheckpointsCard(
      {super.key,
      required this.image,
      required this.distance,
      required this.cityName});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
        child: Column(
      children: AnimationConfiguration.toStaggeredList(
        duration: const Duration(milliseconds: 375),
        childAnimationBuilder: (widget) => FadeInAnimation(
          curve: Curves.easeIn,
          child: widget),
        children: [
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 80,
              width: 80,
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
              child: Text(
                cityName,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
            ),
          ),
          Row(
            children: [
              const Icon(Icons.location_on, color: Colors.grey),
              Text(
                "$distance km",
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
