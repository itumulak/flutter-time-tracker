import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/models/task.dart';

import 'contract.dart';

class Contracts extends ChangeNotifier {
  int _activeContract = 0;
  bool _isTimerRunning = false;
  final List<Contract> _contracts = <Contract>[
    Contract(
      company: 'Quantum Innovations Co.',
      tasks: []
    ),
    Contract(
      company: 'Stellar Solutions Ltd.',
      tasks: []
    ),
    Contract(
      company: 'Nebula Dynamics Inc.',
      tasks: []
    ),
    Contract(
      company: 'Zenith Nexus Technologies',
      tasks: []
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

  List<Contract> get list => _contracts;
  int get getActiveContractId => _activeContract;
  bool get getTimerStatus => _isTimerRunning;

  void updateActiveContract(int index) {
    _activeContract = index;
    notifyListeners();
  }

  void toggleActive(bool state) {
    _isTimerRunning = state;
    notifyListeners();
  }

  List<Task>? getTasks(int index) {
      return _contracts[index].tasks;
  }

  int getTotalTasksDuration(index) {
    List<Task>? tasks = getTasks(index);
    int totalDuration = 0;

    tasks?.forEach((element) {
      totalDuration += element.duration;
    });

    return totalDuration;
  }

  void addTaskToContract(int index, Task task ) {
    _contracts[index].tasks?.add(
      Task(
        duration: task.duration,
        description: task.description
      )
    );

    notifyListeners();
  }

  String getActiveContractName(int index) => _contracts[index].company;
}