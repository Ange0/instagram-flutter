import 'package:flutter/material.dart';
import 'package:instagram/post_widget.dart';
import 'package:instagram/story_widget.dart';

const dWhite = Colors.white;
const dBlack = Colors.black;
const dYellow = Colors.yellow;
dynamic dGreyShade700 = Colors.grey.shade700;
dynamic dGreyShade400 = Colors.grey.shade400;
dynamic dGreyShade300 = Colors.grey.shade300;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: dWhite,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
            color: dBlack,
          ),
          title: Image.asset(
            'assets/images/instagram-logo.png',
            height: 60,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send_outlined),
              color: dBlack,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              StoryWidget(),
              PostWidget(),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarWidget(),
      ),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: dGreyShade700,
      selectedItemColor: dBlack,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt_outlined),
          label: 'Add Photo',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profil',
        ),
      ],
    );
  }
}
