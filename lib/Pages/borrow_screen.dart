import 'package:board_game_borrower/Colors.dart';
import 'package:board_game_borrower/widgets.dart';
import 'package:flutter/material.dart';

class BorrowScreen extends StatelessWidget{
  const BorrowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: BorrowGameTile()
      )
    );
  }
}

class BorrowGameTile extends StatelessWidget {
  const BorrowGameTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black26
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              IntrinsicWidth(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50), // Optional for rounded edges
                                    color: MainColors.secondaryColor,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 7.5, vertical: 2),
                                      child: Text(
                                        'Borrow', 
                                        style: TextStyle(
                                          fontFamily: 'worksans',
                                          fontSize: 13,
                                          color: Colors.white
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
              Text(
                'Select Hub',
                style: TextStyle(
                  fontFamily: 'worksans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              for (int i = 0; i < 3; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Central Library',
                      style: TextStyle(
                        fontFamily: 'worksans',
                        fontSize: 16.5,
                      ),
                    ),
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5), // Optional for rounded edges
                        color: MainColors.primaryColor,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text(
                            'Available', 
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
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}