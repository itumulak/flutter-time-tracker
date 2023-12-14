import 'package:flutter/material.dart';
import 'package:time_tracker/widgets/tracker_actions.dart';

class TrackerScreen extends StatelessWidget {
  const TrackerScreen({super.key});

  static const route = '/main';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            iconSize: 32.0,
            icon: const Icon(Icons.menu),
            onPressed: () { },
          ),
          title: const Text('Time Tracker'),
          actions: const [
            Padding(
              padding: EdgeInsets.all(3.0),
              child: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.lightBlueAccent,
                child: CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                      'https://secure.gravatar.com/avatar/3bbd5c6e1b3190a72350bbb9b31dfb2d?s=100&d=mm&r=g'),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0,),
          child: const Column(
            children: [
              TrackerActions()
            ],
          ),
        ),
      ),
    );
  }
}
