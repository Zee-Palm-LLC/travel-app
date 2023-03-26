import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class GetDirectionsCard extends StatelessWidget {
  const GetDirectionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
        child: Column(
      children: AnimationConfiguration.toStaggeredList(
        duration: const Duration(milliseconds: 375),
        childAnimationBuilder: (widget) => SlideAnimation(
          horizontalOffset: MediaQuery.of(context).size.width / 2,
          child: FadeInAnimation(child: widget),
        ),
        children: [
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              height: 160,
              width: 160,
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/kayota.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Kayota Local Road',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 30,
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange),
                    child: Row(
                      children: const [
                        Icon(Icons.location_on, color: Colors.white, size: 15),
                        Text(
                          'Get Directions',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: const [
              Icon(Icons.location_on, color: Colors.grey),
              Text(
                "653 km",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
