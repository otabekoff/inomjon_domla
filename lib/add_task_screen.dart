// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:inomjon_domla/database_helper.dart';
import 'package:inomjon_domla/task.dart';
import 'package:intl/intl.dart';

class AddTaskScreen extends StatefulWidget {
  final Function? updateTaskList;

  const AddTaskScreen({super.key, this.updateTaskList});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  String? _title = '';
  DateTime _date = DateTime.now();
  String? _priority;

  final TextEditingController _dateController = TextEditingController();
  final DateFormat _dateFormat = DateFormat('MMM dd, yyyy');
  final List<String> _priorities = ['Low', 'Medium', 'High'];
  _handleDatePicker() async {
    final date = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2023),
      lastDate: DateTime(2050),
    );

    if (date != _date) {
      setState(() {
        _date = date as DateTime;
      });
      _dateController.text = _dateFormat.format(date!);
    } else {}
  }

  _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Task task = Task(
        title: _title,
        date: _date,
        priority: _priority,
      );
      DatabaseHelper.instance.insertTask(task);

      if (widget.updateTaskList != null) widget.updateTaskList!();

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            // color: Colors.red,
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Title',
                        ),
                        onSaved: (input) => _title = input,
                        validator: (input) => input!.trim().isEmpty
                            ? 'Please enter task name'
                            : null,
                      ),
                      TextFormField(
                        readOnly: true,
                        controller: _dateController,
                        decoration: const InputDecoration(
                          labelText: 'Date',
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        onTap: _handleDatePicker,
                        validator: (input) => input!.trim().isEmpty
                            ? 'Please enter task date'
                            : null,
                      ),
                      DropdownButtonFormField(
                        icon: const Icon(Icons.arrow_drop_down),
                        decoration: const InputDecoration(
                          labelText: 'Priority',
                        ),
                        items: _priorities.map((priorityValue) {
                          return DropdownMenuItem<String>(
                            value: priorityValue,
                            child: Text(
                              priorityValue,
                              style: const TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        value: _priority,
                        onChanged: (Object? value) {
                          setState(() {
                            _priority = value! as String;
                          });
                        },
                        validator: (input) => _priority == null
                            ? 'Please select a priority for the task'
                            : null,
                      ),
                    ],
                  ),
                ),
                TextButton(onPressed: _submit, child: const Text('Saqlash'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
