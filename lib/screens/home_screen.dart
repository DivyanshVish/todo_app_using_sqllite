import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app_using_sqllite/data/data.dart';
import 'package:todo_app_using_sqllite/utils/extension.dart';
import 'package:todo_app_using_sqllite/utils/task_category.dart';
import 'package:todo_app_using_sqllite/widgets/display_list_of_task.dart';
import 'package:todo_app_using_sqllite/widgets/display_white_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: "September 19, 2023",
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    DisplayWhiteText(
                      text: "My Todo List",
                      fontSize: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 140,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListOfTask(
                      task: [
                        Task(
                          title: "title",
                          date: 'date',
                          time: '10:30',
                          note: 'note',
                          isCompleted: false,
                          category: TaskCategory.work,
                        ),
                      ],
                    ),
                    const Gap(20),
                    Text(
                      "Completed",
                      style: context.textTheme.headlineMedium,
                    ),
                    const Gap(20),
                    const ListOfTask(
                      task: [],
                      isCompletedTask: true,
                    ),
                    const Gap(20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const DisplayWhiteText(
                        text: 'Add New Task',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
