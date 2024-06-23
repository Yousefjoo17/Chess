import 'package:chess/constants.dart';
import 'package:flutter/material.dart';

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({
    super.key,
    required this.playerName,
    required this.image,
    required this.color,
  });
  final String playerName;
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        width: kSQUARE_LENGTH*8,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              playerName,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 10,
            ),
            Image.asset(image, width: 32),
          ],
        ),
      ),
    );
  }
}
