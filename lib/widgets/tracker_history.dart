import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker/func/format_duration.dart';

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
                Text(e.value.description),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.play_arrow),
                      onPressed: () {},
                      iconSize: 18.0,
                    ),
                    Text(formattedDuration(e.value.duration)),
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

    // String totalCompanyDuration(int index) {
    //   List<Task>? tasks = contractProvider.getTasks(4);
    //   int totalDuration = 0;
    //
    //   tasks?.forEach((element) {
    //     totalDuration = totalDuration + element.duration;
    //   });
    //
    //   return totalDuration.toString();
    // }

    return Column(
      children: contractProvider.list.asMap().entries.map((e) {
        int contractIndex = e.key;
        String companyName = e.value.company;
        int totalDuration = contractProvider.getTotalTasksDuration(contractIndex);

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
                        companyName,
                        style: const TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                          formattedDuration(totalDuration)
                      ),
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
                  child: taskLists(contractIndex),
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
