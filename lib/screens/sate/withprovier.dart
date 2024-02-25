import 'package:flutter/material.dart';
import 'package:get_x/controller/provier_controller.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Provider', style: TextStyle(fontSize: 30)),
          Consumer<CountControllerWithProvider>(builder: (_, snapshot, child) {
            return Text(
              '${snapshot.count}',
              style: TextStyle(fontSize: 50),
            );
          }),
          FilledButton(
              onPressed: () {
                Provider.of<CountControllerWithProvider>(context, listen: false)
                    .increase();
              },
              child: Text(
                '+',
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
    );
  }
}
