import 'package:flutter/material.dart';
import 'package:time_tracker/screen/welcome_screen.dart';
import 'package:time_tracker/widgets/tracker_actions.dart';
import 'package:time_tracker/widgets/tracker_history.dart';

class TrackerScreen extends StatelessWidget {
  const TrackerScreen({super.key});

  static const route = '/main';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
              child: ListView(
                children: const [
                  UserAccountsDrawerHeader(
                    accountName: Text('Ian Tumulak'),
                    accountEmail: Text('edden87@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          'https://secure.gravatar.com/avatar/3bbd5c6e1b3190a72350bbb9b31dfb2d?s=100&d=mm&r=g'),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                if (context.mounted) {
                  Navigator.pushNamed(context, WelcomeScreen.route);
                }
              },
            )
          ],
          )
        ),
        appBar: AppBar(
          title: const Text('Time Tracker'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 15.0,
            ),
            child: const Column(
              children: [
                TrackerActions(),
                SizedBox(
                  height: 20.0,
                ),
                TrackerHistory()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
