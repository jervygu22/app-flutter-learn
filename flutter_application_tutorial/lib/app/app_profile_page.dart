import 'package:flutter/material.dart';

const int itemCount = 16;

class AppProfilePage extends StatelessWidget {
  const AppProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${(index)}'),
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.select_all_rounded),
          onTap: (() {
            debugPrint('tapped ${(index)}');
          }),
        );
      },
    );
  }
}
