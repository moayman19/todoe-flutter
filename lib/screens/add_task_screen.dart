import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
   const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle ='';
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: kLightBlueAccentColor, fontSize: 30),
          ),
          TextField(
            autofocus: true,
            cursorColor: kLightBlueAccentColor,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kLightBlueAccentColor),
              ),
            ),
            onChanged: (value) {
              newTaskTitle = value;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: kLightBlueAccentColor),
            onPressed: () {
              Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
            },
            child: const Text(
              'Add',
              style: TextStyle(color: kWhiteColor, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
