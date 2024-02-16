import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class TaskTile extends StatelessWidget {
   const TaskTile({super.key,required this.isChecked,required this.text, required this.checkBoxCallBack,required this.longPress});
   final bool isChecked;
   final String text;
   final Function(bool?)  checkBoxCallBack;
   final Function()  longPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress ,
      title: Text(text,style: TextStyle(decoration: isChecked? TextDecoration.lineThrough:null)),
      trailing:
      Checkbox(
        value: isChecked,
        activeColor: kLightBlueAccentColor,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}