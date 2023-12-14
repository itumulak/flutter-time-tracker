import 'package:flutter/material.dart';
import 'package:time_tracker/widgets/input_field.dart';

class TrackerActions extends StatefulWidget {
  const TrackerActions({super.key});

  @override
  State<TrackerActions> createState() => _TrackerActionsState();
}

class _TrackerActionsState extends State<TrackerActions> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: active ? const Color(0xF5D5EED4) : const Color(0xF5C9C2C2),
      padding: const EdgeInsets.all(
        10.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '0 hrs 00m',
                style: TextStyle(
                  fontSize: 32.0,
                ),
              ),
              Switch(
                value: active,
                activeColor: Colors.lightGreen,
                onChanged: (state) {
                  setState(() {
                    active = state;
                  });
                },
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          InputField(
            onChange: () {},
            validator: () {},
            placeholder: 'What are you working on?',
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButtonFormField(
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffe7eaed),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(3.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffe7eaed),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(3.0)),
              ),
            ),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            isExpanded: true,
            items: const [
              DropdownMenuItem(
                value: 'Quantum Innovations Co.',
                child: Text('Quantum Innovations Co.'),
              ),
              DropdownMenuItem(
                value: 'Stellar Solutions Ltd.',
                child: Text('Stellar Solutions Ltd.'),
              ),
              DropdownMenuItem(
                value: 'Nebula Dynamics Inc.',
                child: Text('Nebula Dynamics Inc.'),
              ),
              DropdownMenuItem(
                value: 'Zenith Nexus Technologies',
                child: Text('Zenith Nexus Technologies'),
              ),
              DropdownMenuItem(
                value: 'Virtuoso Ventures Group',
                child: Text('Virtuoso Ventures Group'),
              ),
            ],
            onChanged: (value) {},
            value: 'Virtuoso Ventures Group',
          )
        ],
      ),
    );
  }
}