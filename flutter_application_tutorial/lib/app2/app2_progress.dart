import 'package:flutter/material.dart';

class App2Progress extends StatelessWidget {
  const App2Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("This is a column text"),
        LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}

class App2TaskList extends StatelessWidget {
  const App2TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        App2TaskItem(label: "Task 1"),
        App2TaskItem(label: "Task 2"),
        App2TaskItem(label: "Task 3"),
        App2TaskItem(label: "Task 4"),
        App2TaskItem(label: "Task 6"),
        App2TaskItem(label: "Task 7"),
        App2TaskItem(label: "Task 8"),
        App2TaskItem(label: "Task 9"),
        App2TaskItem(label: "Task 10"),
        App2TaskItem(label: "Task 11"),
        App2TaskItem(label: "Task 12"),
        App2TaskItem(label: "Task 13"),
        App2TaskItem(label: "Task 14"),
        App2TaskItem(label: "Task 15"),
        App2TaskItem(label: "Task 16"),
        App2TaskItem(label: "Task 17"),
        App2TaskItem(label: "Task 18"),
      ],
    );
  }
}

class App2TaskItem extends StatelessWidget {
  final String label;
  const App2TaskItem({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Checkbox(
          value: false,
          onChanged: null,
        ),
        Text(label),
      ],
    );
  }
}
