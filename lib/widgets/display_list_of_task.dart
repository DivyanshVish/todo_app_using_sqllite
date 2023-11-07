import 'package:flutter/material.dart';
import 'package:todo_app_using_sqllite/data/model/task.dart';
import 'package:todo_app_using_sqllite/utils/extension.dart';

import 'comman_container.dart';

class ListOfTask extends StatelessWidget {
  const ListOfTask({
    super.key,
    required this.task,
    this.isCompletedTask = false,
  });

  final List<Task> task;
  final bool isCompletedTask;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height =
        isCompletedTask ? deviceSize.height * .25 : deviceSize.height * .3;
    final emptyTasksMessage = isCompletedTask
        ? 'There is no Completed Tasks yet'
        : 'There is no task todo!';
    return CommonContainer(
      height: height,
      child: task.isEmpty
          ? Center(
              child: Text(
                emptyTasksMessage,
                style: context.textTheme.headlineSmall,
              ),
            )
          : ListView.builder(
              shrinkWrap: true,
              itemCount: task.length,
              padding: EdgeInsets.zero,
              itemBuilder: (ctx, index) {
                final tasks = task[index];
                return Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Icon(
                          tasks.category.icon,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
    );
  }
}
