import 'package:flutter/material.dart';
import '../models/character2.dart';

class CharacterTile extends StatelessWidget {
  final Character character;
  final void Function()? onTap;

  const CharacterTile({
    super.key,
    required this.character,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            // iamge
        Image.asset(
          character.imagePath,
          height: 140,
        ),
        //text
        Text(
          character.name,
          style: TextStyle(fontSize: 20),
        ),
        //detail + gang
        SizedBox(
          width: 160,
          child: Column(
            children: [
              //detail
              Text(character.detail),
              //gang
              Text(character.gang),
            ],
          ),
        )
        ],
      ),
    );
  }
}