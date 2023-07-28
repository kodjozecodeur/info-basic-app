import 'package:flutter/material.dart';
import 'package:travel_app/class/item_class.dart';
import 'package:travel_app/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel App'),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(
                title: 'Rocket',
                imagePath: 'assets/images/rocket.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Space',
                      imagePath: 'assets/images/space.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Travel',
                      imagePath: 'assets/images/travel.png',
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                title: 'Yeah',
                imagePath: 'assets/images/yeah.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
