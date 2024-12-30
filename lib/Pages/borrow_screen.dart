import 'package:board_game_borrower/Colors.dart';
import 'package:board_game_borrower/widgets.dart';
import 'package:flutter/material.dart';

class BorrowScreen extends StatelessWidget{
  const BorrowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map gameData = {
      'name': 'Catan',
      'players': '3-4',
      'time': '60-120 min',
      'description': 'A classic stratergy game of resource trading and settlement building',
      'hubs': [
        {
          'name': 'Central Library',
          'available': true
        },
        {
          'name': 'Marrackville Community Centre',
          'available': false
        },
        {
          'name': 'Startup Hub Coworking',
          'available': false
        },
      ]
    };
    Map selections = {
      'hub': '',
      'date': '',
    };
    return Scaffold(
      appBar: mainAppBar,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: IntrinsicHeight(
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
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minHeight: 30, // Set a minimum height
                                    ),
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
                  Column(
                    children: List.generate(
                      gameData['hubs']?.length ?? 0,
                      (index) {
                        String hubName = gameData['hubs'][index]['name'] ?? 'Unknown Hub';
                        bool hubAvailability =
                            gameData['hubs'][index]['available'] ?? false;

                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  hubName,
                                  style: TextStyle(
                                    fontFamily: 'worksans',
                                    fontSize: 16.5,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  if(hubAvailability){
                                    selections['hub'] = hubName;
                                  } else{
                                    // Implement booking logic here
                                  }
                                },
                                child: Container(
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: hubAvailability
                                        ? MainColors.primaryColor
                                        : Colors.transparent,
                                    border: !hubAvailability
                                        ? Border.all(color: MainColors.primaryColor)
                                        : null,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        hubAvailability ? 'Available' : 'Book',
                                        style: TextStyle(
                                          fontFamily: 'worksans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: hubAvailability
                                              ? Colors.white
                                              : MainColors.primaryColor,
                                          decoration: hubAvailability
                                              ? TextDecoration.underline
                                              : null,
                                          decorationColor: Colors.white,
                                          decorationThickness: 2.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ),
        )
      )
    );
  }
}
