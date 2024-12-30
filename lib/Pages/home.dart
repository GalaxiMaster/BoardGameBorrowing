import 'package:board_game_borrower/Colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('ROLLERS GAMES HUB'),
            Icon(
              Icons.menu,
              size: 35,
            ),
          ],
        ),
      ),
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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black26
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7.5),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Catan'),
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
                                Icons.pin_drop,
                                size: 30,
                              ),
                              Text('Central Library'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            )
          ], 
        ),
      )
    );
  }

}