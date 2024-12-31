import 'package:board_game_borrower/Colors.dart';
import 'package:board_game_borrower/Pages/borrow_screen.dart';
import 'package:board_game_borrower/Pages/your_rentals.dart';
import 'package:board_game_borrower/widgets.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List pages = [
      HomePage(),
      YourRentals(),
    ];
    PageController controller = PageController();
    return Scaffold(
      appBar: mainAppBar,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Stack(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => controller.jumpToPage(0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          'Browse Games',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => controller.jumpToPage(1),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          'Your rentals',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) {
                      double position = controller.hasClients
                          ? controller.page ?? controller.initialPage.toDouble()
                          : 0;
                      double underlineWidth = MediaQuery.of(context).size.width * 0.35; // Adjust for tab width
                      return Transform.scale(
                        scaleX: (1*(1-position)).clamp(.8, 1),
                        child: Transform.translate(
                          offset: Offset(position * (underlineWidth + 30), 0),
                          child: Container(
                            width: underlineWidth,
                            height: 2,
                            color: MainColors.primaryColor,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Divider(thickness: 1, color: Colors.black),
          ),
          SizedBox(
            height: 500,
            child: PageView.builder(
              controller: controller,
              itemCount: pages.length,
              onPageChanged: (index) => debugPrint('Page: $index'),
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          GameTile(),
        ],
      ),
    );
  }
}

class GameTile extends StatelessWidget {
  const GameTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BorrowScreen()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black26),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 15),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Catan',
                      style: TextStyle(
                        fontFamily: 'worksans',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 4), // Space between icon and text
                        Text('3-4'),
                        SizedBox(width: 16), // Space between two groups
                        Icon(Icons.access_time),
                        SizedBox(width: 4), // Space between icon and text
                        Text('60-120 min'),
                      ],
                    ),
                    Text(
                        'A classic strategy game of resource trading and settlement building'),
                    Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: MainColors.primaryColor,
                          size: 30,
                        ),
                        Text('Central Library'),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset(
                'Assets/catan.png',
                scale: 1.2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
