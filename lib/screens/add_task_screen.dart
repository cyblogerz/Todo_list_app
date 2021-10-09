// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddTaskScreen extends StatelessWidget {
  // const AddTaskScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Add Task',
                style: TextStyle(color: Colors.blue, fontSize: 30)),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            // SizedBox(
            //   height: 20,
            // ),
            SizedBox(
              width: double.infinity,
              // height: 100,
              child: ElevatedButton(onPressed: () {}, child: Text('ADD')),
            )
          ],
        ),
      ),
    );
  }
}
