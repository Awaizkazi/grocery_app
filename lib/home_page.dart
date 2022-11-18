import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/model/cart_model.dart';
import 'package:provider/provider.dart';

import 'components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 47),
            // Good morning
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Good Morning,'),
            ),
            const SizedBox(height: 4),
            // Let's order fresh items for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Let\'s order fresh items for you',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 24),
            // Divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(thickness: 4),
            ),
            // Fresh items + grid
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Fresh Items',
                style: TextStyle(fontSize: 16),
              ),
            ),
            // Gird view for items
            Expanded(
              child: Consumer<Cartmodel>(
                builder: ((context, value, child) {
                  return GridView.builder(
                    itemCount: value.shopItems.length,
                    padding: EdgeInsets.all(12.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: ((context, index) {
                      return GroceryItemTile(
                        itemName: value.shopItems[index][0],
                        itemPrice: value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                      );
                    }),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
