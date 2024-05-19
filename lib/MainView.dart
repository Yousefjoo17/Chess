import 'package:chess/widgets/Board.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Chess",
                style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Board(),
        ],
      ),
    );
  }
}
