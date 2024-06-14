import 'package:chess/constants.dart';
import 'package:chess/core/widgets/custom_button.dart';
import 'package:chess/main.dart';
import 'package:chess/viewModel/cubit/manager_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameOverWidget extends StatelessWidget {
  const GameOverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 2 * kSQUARE_LENGTH,
      left: 2 * kSQUARE_LENGTH,
      child: SizedBox(
        width: 4 * kSQUARE_LENGTH,
        height: 4 * kSQUARE_LENGTH,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            getWinner(),
            SizedBox(
                width: 3 * kSQUARE_LENGTH,
                height: 0.6 * kSQUARE_LENGTH,
                child: CustomButton(
                    text: "Retry",
                    ontap: () {
                      BlocProvider.of<ManagerCubit>(context).retry();
                    },
                    color: const Color.fromARGB(255, 138, 252, 195)))
          ],
        ),
      ),
    );
  }
}

Widget getWinner() {
  if (wWin) {
    return const Material(
      elevation: 5,
      color: Colors.transparent,
      child: Text(
        "White win",
        style: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  } else if (bWin) {
    return const Material(
      elevation: 5,
      child: Text(
        "Black win",
        style: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  } else {
    return const SizedBox(
      width: 1,
      height: 1,
    );
  }
}
