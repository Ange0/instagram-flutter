import 'package:flutter/material.dart';
import 'package:instagram/main.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({Key? key}) : super(key: key);
  final List storyItems = [
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/photo-1.jpeg",
    },
    {
      "pseudo": 'GuyZai',
      "photo": "assets/images/photo/photo-2.jpeg",
    },
    {
      "pseudo": 'Gaben',
      "photo": "assets/images/photo/photo-3.jpeg",
    },
    {
      "pseudo": 'Dodo',
      "photo": "assets/images/photo/photo-4.jpeg",
    },
    {
      "pseudo": 'Ange0',
      "photo": "assets/images/photo/photo-5.jpeg",
    },
    {
      "pseudo": 'Vito',
      "photo": "assets/images/photo/photo-6.jpeg",
    },
    {
      "pseudo": 'Syli',
      "photo": "assets/images/photo/photo-7.jpeg",
    },
    {
      "pseudo": 'Tandress',
      "photo": "assets/images/photo/photo-8.jpeg",
    },
    {
      "pseudo": 'Davido',
      "photo": "assets/images/photo/photo-9.jpeg",
    },
    {
      "pseudo": 'Desy',
      "photo": "assets/images/photo/photo-10.jpeg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story) {
          return Container(
              height: 100,
              width: 70,
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/story-circle.png',
                        height: 70,
                      ),
                      Image.asset(
                        'assets/images/story-circle.png',
                        height: 68,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        backgroundImage: AssetImage(story['photo']),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    story["pseudo"],
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ));
        }).toList(),
      ),
    );
  }
}
