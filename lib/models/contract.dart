import 'package:time_tracker/models/task.dart';

class Contract {
  late String company;
  late List<Task>? tasks;

  Contract({required this.company, this.tasks});
}