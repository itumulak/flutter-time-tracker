import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/models/task.dart';

import 'contract.dart';

class Contracts extends ChangeNotifier {
  bool isTimerRunning = false;
  int activeContract = 0;
  List<Contract> contracts = <Contract>[
    Contract(
      company: 'Quantum Innovations Co.'
    ),
    Contract(
      company: 'Stellar Solutions Ltd.'
    ),
    Contract(
      company: 'Nebula Dynamics Inc.'
    ),
    Contract(
      company: 'Zenith Nexus Technologies'
    ),
    Contract(
      company: 'Virtuoso Ventures Group',
      tasks: [
        Task(
          duration: 2104,
          description: 'Doing research on the API...',
        ),
        Task(
          duration: 3850,
          description: 'Test the API.',
        )
      ],
    )
  ];

  List<Contract> get list => contracts;
  int get getActiveContract => activeContract;
  bool get getTimerStatus => isTimerRunning;

  void updateActiveContract(int index) {
    activeContract = index;
    notifyListeners();
  }

  void toggleActive() {
    isTimerRunning != isTimerRunning;
    notifyListeners();
  }

  List<Task>? getTasks(int index) {
      return contracts[index].tasks;
  }

  int getTotalTasksDuration(index) {
    List<Task>? tasks = getTasks(index);
    int totalDuration = 0;

    tasks?.forEach((element) {
      totalDuration = totalDuration + element.duration;
    });

    return totalDuration;
  }
}