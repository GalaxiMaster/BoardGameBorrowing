import 'package:board_game_borrower/Colors.dart';
import 'package:board_game_borrower/Pages/borrow_screen.dart';
import 'package:board_game_borrower/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Browse Games', 
                  style: TextStyle(
                    fontSize: 20, 
                    decoration: TextDecoration.underline,
                    decorationColor: MainColors.primaryColor,
                    decorationThickness: 2, 
                  ),
                ),
                SizedBox(width: 20,),
                Text(
                  'Your rentals', 
                    style: TextStyle(
                      fontSize: 20,
                    ),
                ),
              ],
            ),
            Divider(thickness: 1, color: Colors.black,),
            GameTile()
          ], 
        ),
      )
    );
  }
}

class GameTile extends StatelessWidget {
  const GameTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => BorrowScreen())
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black26
          ),
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
                    Text('A classic stratergy game of resource trading and settlement building'),
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
        )
      ),
    );
  }
}