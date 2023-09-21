import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/cart_item.dart';
import 'models/shoe.dart';
import 'models/trick.dart';

class TrickPage extends StatelessWidget {
  const TrickPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //heading
                  const Text(
                    'Champion',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),

                  const SizedBox(height: 20),

                  Expanded(
                    child: ListView.builder(
                      itemCount: value.getShoeList().length,
                      itemBuilder: (context, index) {
                        // get indivdual shoe
                        Shoe individualShoe = value.getShoeList()[index];

                        // return the cart item
                        return CartItem(shoe: individualShoe);
                      },
                    ),
                  )
                ],
              ),
            ));
  }
}
