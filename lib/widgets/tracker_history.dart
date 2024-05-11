import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/contracts.dart';
import '../models/task.dart';

class TrackerHistory extends StatelessWidget {
  const TrackerHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final contractProvider = Provider.of<Contracts>(context);

    Widget? taskLists(index) {
      List<Task>? list = contractProvider.getTasks(index);

      if ( list != null ) {
        return Column(
          children: list.asMap().entries.map((e) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Doing research on the API'),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.play_arrow),
                      onPressed: () {},
                      iconSize: 18.0,
                    ),
                    const Text('00:35:04'),
                  ],
                ),
              ],
            );
          }).toList(),
        );
      }
      else {
        return const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('No tasks yet'),
          ],
        );
      }
    }

    return Column(
      children: contractProvider.list.asMap().entries.map((e) {
        return Column(
          children: [
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
                        e.value.company,
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
                  child: taskLists(e.key),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        );
      }).toList(),
    );
  }
}
