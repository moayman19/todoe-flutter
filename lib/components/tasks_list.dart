import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              final task =  taskData.tasks[index];
              return TaskTile(
                isChecked: task.isCheck,
                text: task.text,
                checkBoxCallBack: (checkBoxState) {
                  taskData.updateTask(task);
                },
                longPress: (){
                  taskData.deleteTask(task);
                },
              );
            });
      },
    );
  }
}
