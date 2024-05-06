import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker/widgets/input_field.dart';

import '../models/contracts.dart';

class TrackerActions extends StatefulWidget {
  const TrackerActions({super.key});

  @override
  State<TrackerActions> createState() => _TrackerActionsState();
}

class _TrackerActionsState extends State<TrackerActions> {
  bool active = false;
  String workAppointed = '';
  String workDescription = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    workAppointed = 'Virtuoso Ventures Group';
  }

  @override
  Widget build(BuildContext context) {
    final contractProvider = Provider.of<Contracts>(context);

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
          active
              ? Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    workAppointed,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
              : DropdownButtonFormField(
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
                  items: contractProvider.list.map(
                          (e) => DropdownMenuItem(
                            value: e.company,
                            child: Text(e.company),
                          ),
                        ).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        workAppointed = value;
                      });
                    }
                  },
                  value: 'Virtuoso Ventures Group',
                ),
          const SizedBox(
            height: 10,
          ),
          active
              ? Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    workDescription,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
              : InputField(
                  inputValue: workDescription,
                  onChange: (value) {
                    setState(() {
                      workDescription = value;
                    });
                  },
                  validator: () {},
                  placeholder: 'What are you working on?',

                ),
        ],
      ),
    );
  }
}
