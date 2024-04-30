import 'package:flutter/material.dart';

class TrackerHistory extends StatelessWidget {
  const TrackerHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('This week'),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Container(
              color: const Color(0xF5C9C2C2),
              padding: EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mon, Dec 11'),
                  Text('01:39:14')
                ],
              ),
            ),
            Container(
              color: Color(0xffe7eaed),
              padding: EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 10.0,
              ),
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Virtuoso Ventures Group',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Doing research on the API'),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.play_arrow),
                                onPressed: () {},
                                iconSize: 18.0,
                              ),
                              Text('00:35:04'),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Testing the API'),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.play_arrow),
                                onPressed: () {},
                                iconSize: 18.0,
                              ),
                              Text('01:04:10'),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
