import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_stack/image_stack.dart';
import 'package:travel_app/checkpoint/components/circle_radius_card.dart';
import 'package:travel_app/checkpoint/components/get_directions_card.dart';
import 'package:travel_app/data/constants.dart';

import 'components/checkpoints_card.dart';

class CheckpointView extends StatelessWidget {
  List<String> images = <String>[
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
    "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  ];
  CheckpointView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    "Discover Trending Checkpoint in Japan",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                  ),
                ),
                Icon(Icons.document_scanner_outlined,
                    color: Colors.grey, size: 40),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.4,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Positioned(
                    left: -50, right: -50, child: CircularRadiusCard()),
                const Positioned(
                    left: -10, right: -10, child: CircularRadiusCard()),
                const Positioned(
                    left: 30, right: 30, child: CircularRadiusCard()),
                const Positioned(
                    left: 80, right: 80, child: CircularRadiusCard()),
                const Positioned(
                    left: 120, right: 120, child: CircularRadiusCard()),
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/profile.jpg'),
                          fit: BoxFit.cover)),
                ),
                const Positioned(
                    left: 40,
                    top: 20,
                    child: CheckpointsCard(
                      distance: '951',
                      image: 'assets/arashi.jpg',
                      cityName: 'Arashi Yama',
                    )),
                const Positioned(
                    left: 50,
                    top: 250,
                    child: CheckpointsCard(
                      distance: '690',
                      image: 'assets/daigoji.jpg',
                      cityName: 'Daigoji Lake',
                    )),
                const Positioned(
                    left: 10,
                    bottom: 70,
                    child: CheckpointsCard(
                      distance: '992',
                      image: 'assets/itsuku.jpg',
                      cityName: 'Itsuku Lake',
                    )),
                const Positioned(
                    right: 50,
                    bottom: 140,
                    child: CheckpointsCard(
                      distance: '673',
                      image: 'assets/chureito.jpg',
                      cityName: 'Chureito Pagoda',
                    )),
                const Positioned(
                    right: -20, top: 50, child: GetDirectionsCard()),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                ImageStack(
                  imageList: images,
                  imageRadius: 45,
                  imageCount: 4,
                  imageBorderWidth: 3,
                  totalCount: 4,
                  backgroundColor: Colors.white,
                  imageBorderColor: Colors.white,
                  extraCountBorderColor: Colors.white,
                ),
                const SizedBox(width: 10),
                const Expanded(
                    child:
                        Text("Joel, Kim, Anna and 4 Friends was in this area!"))
              ],
            ),
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
