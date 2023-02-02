// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:inomjon_domla/add_task_screen.dart';
import 'package:inomjon_domla/database_helper.dart';
import 'package:inomjon_domla/task.dart';
import 'package:intl/intl.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  late Future<List<Task>> _taskList;
  final DateFormat _dateFormat = DateFormat('MMM dd, yyyy');

  Widget _buildItem(Task task) {
    return Container(
      color: Colors.amber,
      child: ListTile(
        title: Text(
          task.title!,
          style: TextStyle(
              decoration: task.status == 0
                  ? TextDecoration.none
                  : TextDecoration.lineThrough),
        ),
        subtitle: Text(
          _dateFormat.format(task.date),
          style: TextStyle(
              decoration: task.status == 0
                  ? TextDecoration.none
                  : TextDecoration.lineThrough),
        ),
        trailing: Checkbox(
          value: task.status == 0 ? false : true,
          activeColor: Theme.of(context).primaryColor,
          onChanged: (bool? value) {
            if (value != null) {
              task.status = value ? 1 : 0;
              DatabaseHelper.instance.updateTask(task);
              _updateTaskList();
            } else {}
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _updateTaskList();
  }

  _updateTaskList() {
    setState(() {
      _taskList = DatabaseHelper.instance.getTaskList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AddTaskScreen(
                        updateTaskList: _updateTaskList,
                      ))),
          child: const Icon(Icons.add),
        ),
        body: FutureBuilder(
          initialData: const [],
          future: _taskList,
          builder: (context, AsyncSnapshot snapshot) {
            return ListView.builder(
              itemCount: snapshot.data.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Container(
                    child: const Text(
                      'My tasks',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                } else {
                  return _buildItem(snapshot.data[index - 1]);
                }
              },
            );
          },
        ),
      ),
    );
  }
}
