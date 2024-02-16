import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/tasks_list.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/add_task_screen.dart';



class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: kLightBlueAccentColor,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,

              builder: (context)=>SingleChildScrollView(
                  child:Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const AddTaskScreen(),
                  )
              ));


        },
        child: const Icon(
          Icons.add,
          color: kWhiteColor,
          size: 30,
        ),
      ),
      backgroundColor: kLightBlueAccentColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, bottom: 30, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: kWhiteColor,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: kLightBlueAccentColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Todoey',
                  style: kTodoeyTextStyle,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: kTasksTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: kContainerBoxDecoration,
              child: const TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}

