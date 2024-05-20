import 'package:flutter/material.dart';

class DestWidget extends StatelessWidget {
  const DestWidget({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.green[50],
      ),
    );
  }
}
