import 'package:flutter/material.dart';
import 'package:flutter_application_tutorial/app2/app2_progress.dart';

class App2HomePage extends StatelessWidget {
  const App2HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('App 2'),
      ),
      body: SingleChildScrollView(
        child: Column(children: const [
          App2Progress(),
          App2TaskList(),
        ]),
      ),
    );
  }
}
