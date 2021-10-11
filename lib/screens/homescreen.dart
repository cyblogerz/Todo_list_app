// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/models/tasks.dart';
import 'package:todo_list/widgets/tasks_list.dart';
import 'add_task_screen.dart';

// import '/widgets/tasks_list.dart';
// import 'package:todo_list/widgets/tasks_tile.dart';

class TodoListScreen extends StatefulWidget {
  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Task> tasks = [
    Task(name: 'Complete this today'),
    Task(name: 'Study dp'),
    Task(name: 'refactor digicupid')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              // isScrollControlled: true,
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(addTaskCallback: (newtasktitle) {
                        setState(() {
                          tasks.add(Task(name: newtasktitle));
                          Navigator.pop(context);
                        });
                      }))));
        },
      ),
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, right: 30.0, left: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '12 tasks',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              // padding: EdgeInsets.only(top: 20.0),
              // height: 500,

              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TasksList(
                  tasks: tasks,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
