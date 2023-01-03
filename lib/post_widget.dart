import 'package:flutter/material.dart';
import 'package:instagram/main.dart';

class PostWidget extends StatelessWidget {
  PostWidget({Key? key}) : super(key: key);
  final List postItems = [
    {
      "pseudo": 'Laravel',
      "photo": "assets/images/photo/photo-1.jpeg",
      "photoProfil": "assets/images/profil/photo-1.webp",
      "description":
          "🤩😱 Top for create app web fasted? gogo gdgg gdfdtee fdffd eggdgd dggdgv vdvvdg ggdgb tzresvvs hdteffd gdfddfte fdfdfredd"
    },
    {
      "pseudo": 'Go!',
      "photo": "assets/images/photo/photo-2.jpeg",
      "photoProfil": "assets/images/profil/photo-2.jpeg",
      "description": "Super simpa lorem ipsum"
    },
    {
      "pseudo": 'Kafka',
      "photo": "assets/images/photo/photo-3.jpeg",
      "photoProfil": "assets/images/profil/photo-3.jpeg",
      "description": "😭😩 kafka is beautiful systems real time"
    },
    {
      "pseudo": 'PHP',
      "photo": "assets/images/photo/photo-4.jpeg",
      "photoProfil": "assets/images/profil/photo-5.jpeg",
      "description": "🤩😱😩 Php is my langage prefered in web"
    },
    {
      "pseudo": 'Python',
      "photo": "assets/images/photo/photo-6.jpeg",
      "photoProfil": "assets/images/profil/photo-6.webp",
      "description": "Yes! Python is the best and populary"
    },
    {
      "pseudo": 'Java Script',
      "photo": "assets/images/photo/photo-5.jpeg",
      "photoProfil": "assets/images/profil/photo-5.jpeg",
      "description":
          "My adore! is present in my live and live others developper"
    },
    {
      "pseudo": 'Java',
      "photo": "assets/images/photo/photo-4.jpeg",
      "photoProfil": "assets/images/profil/photo-2.jpeg",
      "description": "Java is fast but the teacher is Golang my opinion 🤩"
    },
    {
      "pseudo": 'Rubi',
      "photo": "assets/images/photo/photo-10.jpeg",
      "photoProfil": "assets/images/profil/photo-1.webp",
      "description": "Yes Rubi is recommanded but i not used efficaciment"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: dGreyShade300,
                    backgroundImage: AssetImage(post["photoProfil"]),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    post["pseudo"],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    "assets/images/verification-badge.png",
                    height: 12,
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(post["photo"]), fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 4),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.message_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send_outlined),
                  ),
                  Expanded(child: Column()),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_outline),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: dGreyShade300,
                      backgroundImage: AssetImage(post["photoProfil"]),
                    ),
                    const SizedBox(width: 10),
                    RichText(
                      text: TextSpan(
                        text: "Aimé par ",
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'angelo ',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          TextSpan(text: 'et '),
                          TextSpan(
                              text: '12 autres personnes ',
                              style: TextStyle(fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                  ])
                ],
              ),
            ),
            const SizedBox(width: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  post["pseudo"],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    post["description"],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  "voir plus ",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: dGreyShade300,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "See 14 commentaires",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: dGreyShade400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Text(
                  "16 min ago • ",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: dGreyShade400,
                  ),
                ),
                const Text(
                  "Translate",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            )
          ],
        );
      }).toList(),
    );
  }
}
