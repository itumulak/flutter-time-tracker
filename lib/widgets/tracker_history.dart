import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/contracts.dart';

class TrackerHistory extends StatelessWidget {
  const TrackerHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final contractProvider = Provider.of<Contracts>(context);

    return Column(
      children: contractProvider.list.map((e) {
        return Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  color: const Color(0xF5C9C2C2),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5.0,
                    vertical: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        e.company,
                        style: const TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      const Text('01:39:14')
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xffe7eaed),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5.0,
                    vertical: 10.0,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
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
                ),
              ],
            ),
          ],
        );
      }).toList(),
    );
  }
}
