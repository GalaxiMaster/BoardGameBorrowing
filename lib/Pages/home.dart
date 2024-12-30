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
            Row(
              children: [
                Text(
                  'ROLLERS GAMES HUB',
                  style: TextStyle(
                    fontFamily: 'Marujo',
                  ),
                ),
                SizedBox(width: 10),
                Image.asset(
                  'Assets/logo-red.png',
                  width: 25,
                  height: 25,
                )
              ],
            ),
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
                    Column(
                      children: [
                        IntrinsicWidth(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5), // Optional for rounded edges
                              color: MainColors.primaryColor,
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                child: Text(
                                  'Select', 
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    color: Colors.white
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                        Image.asset(
                          'Assets/catan.png',
                          scale: 1.2,
                        )
                      ],
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