import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/character2.dart';
import 'package:flutter_application_1/theme/colors.dart';

import 'character_details_page.dart';
import 'components/character_tile.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key,});
   

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  // character menu
  List characterMenu = [
    // character list
    Character(
      // Manjiro Sano
      name: 'Manjiro Sano',
      detail: 'Mikey',
      imagePath: 'lib/images/mikey.jpg',
      gang: 'Tokyo Manjia Kai Gang'
      ),
      // Ryuguji Ken
      Character(
      name: 'Ryuguji Ken',
      detail: 'Darken',
      imagePath: 'lib/images/darken.jpg',
      gang: 'Tokyo Manjia Kai Gang'
      ),
       Character(
      name: 'Keisuke Baji',
      detail: 'Edward',
      imagePath: 'lib/images/baji.webp',
      gang: 'Tokyo Manjia Kai Gang'
      ),
       Character(
      name: 'Takacki Mitsuya',
      detail: 'Mitsuya',
      imagePath: 'lib/images/mitsuya.webp',
      gang: 'Tokyo Manjia Kai Gang'
      ),
       Character(
      name: 'Haruki Hayashida',
      detail: 'pah chin',
      imagePath: 'lib/images/pahchin.png',
      gang: 'Tokyo Manjia Kai Gang'
      ),
        Character(
      name: 'Takemichi Hanagaki',
      detail: 'Takemichi',
      imagePath: 'lib/images/takemichi.png',
      gang: 'Tokyo Manjia Kai Gang and Black Dargon Gang'
      ),
        Character(
      name: 'Kazutora Hanemiya',
      detail: 'kazutora',
      imagePath: 'lib/images/kazutora.png',
      gang: 'Valhalla Gang'
      ),
        Character(
      name: 'Chifuyu Matsuno',
      detail: 'Chifuyu',
      imagePath: 'lib/images/Chifuyu.png',
      gang: 'Tokyo Manjia Kai Gang'
      ),
  ];

  // navigate to character item details page
void navigateToCharacterDetails(int index){
  Navigator.push(
    context, MaterialPageRoute(
      builder: (context) => CharacterDetailsPage(
        character: characterMenu[index],
      ),
     ),
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //image
                    Image.asset(
                      'lib/images/tokyorevengers.png',
                      height: 100,
                    ),
                    // promo message
                    Text(
                      "Character",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "มังงะนักเลงครบรสชาติ",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 10,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          const SizedBox(height: 25),
          // search bar
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25.0),
  child: TextField(
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(20),),
    ),
  ),
),

const SizedBox(height: 25),
          // menu List
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Character',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
              ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
            itemCount: characterMenu.length,
            itemBuilder: (context, index) => CharacterTile(
            character: characterMenu[index],
            onTap: () => navigateToCharacterDetails(index) ,
                    ),
                    ),
          ),
          // Character list

        ],
      ),
    );
  }
}
