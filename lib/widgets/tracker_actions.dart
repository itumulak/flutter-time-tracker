import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker/func/format_duration.dart';
import 'package:time_tracker/widgets/input_field.dart';

import '../models/contract.dart';
import '../models/contracts.dart';
import '../models/task.dart';

class TrackerActions extends StatefulWidget {
  const TrackerActions({super.key});

  @override
  State<TrackerActions> createState() => _TrackerActionsState();
}

class _TrackerActionsState extends State<TrackerActions> {
  bool active = false;
  late Timer _timer;
  String workDescription = '';
  String workDuration = '00:00:00';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final contractProvider = Provider.of<Contracts>(context);
    bool isTimerRunning = contractProvider.getTimerStatus;
    int activeContractId = contractProvider.getActiveContractId;
    String activeContractName = contractProvider.getActiveContractName(activeContractId);
    List<Contract> contracts = contractProvider.list;

    // Controller for the contract timer.
    void toggleTimer(bool status) {
      const oneSec = Duration(seconds: 1);

      if ( status != true ) {
        setState(() {
          workDuration = '00:00:00';
        });

        _timer = Timer.periodic(oneSec, (Timer timer) {
          setState(() {
            workDuration = formattedDuration(timer.tick);
          });
        });
      }
      else {
        setState(() {
          _timer.cancel();
          Task task = Task(description: workDescription, duration: _timer.tick);
          contractProvider.addTaskToContract(activeContractId, task);
        });
      }
    }

    return Container(
      color: isTimerRunning ? const Color(0xF5D5EED4) : const Color(0xF5C9C2C2),
      padding: const EdgeInsets.all(
        10.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                workDuration,
                style: const TextStyle(
                  fontSize: 32.0,
                ),
              ),
              Switch(
                value: isTimerRunning,
                activeColor: Colors.lightGreen,
                onChanged: (state) {
                  setState(() {
                    contractProvider.toggleActive(state);
                  });

                  toggleTimer(isTimerRunning);
                },
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          isTimerRunning
              ? Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    activeContractName,
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
                  items: contracts.asMap().entries.map(
                          (e) {
                            return DropdownMenuItem(
                              value: e.key,
                              child: Text(e.value.company),
                            );
                          },
                        ).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        contractProvider.updateActiveContract(value);
                      });
                    }
                  },
                  value: activeContractId,
                ),
          const SizedBox(
            height: 10,
          ),
          isTimerRunning
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
