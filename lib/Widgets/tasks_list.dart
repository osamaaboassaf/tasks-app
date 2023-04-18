import 'package:flutter/material.dart';
import 'package:test1/Widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:test1/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TaskTile(
          tasktitel: Provider.of<TaskData>(context).tasks[index].name,
          isCheked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            Provider.of<TaskData>(context).updateTask(Provider.of<TaskData>(context).tasks[index]);
       // if (checkboxState != null) {
        //}
      },
      );
    },
    itemCount: Provider.of<TaskData>(context).taskCount,
    );
  }
}