import 'package:flutter/material.dart';
import 'package:time_tracker/models/task.dart';

import 'contract.dart';

class Contracts extends ChangeNotifier {
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
          description: 'Doing research on the API.',
        ),
        Task(
          duration: 3850,
          description: 'Test the API.',
        )
      ],
    )
  ];

  List<Contract> get list => contracts;
}