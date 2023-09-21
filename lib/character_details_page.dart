import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';

import 'models/character2.dart';

class CharacterDetailsPage extends StatefulWidget {
  final Character character;
  

  const CharacterDetailsPage({
    super.key,
    required this.character
    });

  @override
  State<CharacterDetailsPage> createState() => _CharacterDetailsPageState();
}

class _CharacterDetailsPageState extends State<CharacterDetailsPage> {
  //quantity
  int quantityCount = 0;

  //decrement quantity
  void decrementQuantity() {
    setState(() {
      quantityCount--;
    });
  }
  
  // increment quantity
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          // listview of character deteils
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  // image
                  Image.asset(
                    widget.character.imagePath,
                    height: 200,
                  ),
            
                  const SizedBox(height: 25,),
            
                  // name
                  Row(
                    children: [
                      //like icon
                      Icon(Icons.star,
                      color: Colors.yellow[800],
                      ),

                      const SizedBox(width: 5),

                      // name
                      Text(widget.character.name,
                      style: TextStyle(
                       color: Colors.grey[600],
                       fontWeight: FontWeight.bold,
                       ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),
            
                  // record
                  Text("Record",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  ),

                  const SizedBox(height:10),

                  Text(
                    "sano manjiro",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 2,
                    ),
                    ),
            
                ],
              ),
            ),
          ),

          // record + birthday + add to cart button
          Container(
            color: primaryColor,
            child: Column(
              children: [
                // gang
                Row(children: [
                  Text(widget.character.gang, 
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                  ),
                  ),
                  Row(
                    children:[
                      // minus button 
                      Container(
                        decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.remove,
                          color: Colors.white
                          ),
                          onPressed: decrementQuantity,
                        ),
                      ),
                      // plus button 
                       Container(
                        decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add,
                          color: Colors.white
                          ),
                          onPressed: incrementQuantity,
                        ),
                      )
                    ],
                  ),
                ],
                )


               
              ],
            ),
          ),
        ],
      ),
    );
  }
}