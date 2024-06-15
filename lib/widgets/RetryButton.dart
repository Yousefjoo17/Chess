import 'package:chess/constants.dart';
import 'package:chess/core/widgets/custom_button.dart';
import 'package:chess/viewModel/cubit/manager_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RetryButton extends StatelessWidget {
  const RetryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 3 * kSQUARE_LENGTH,
      height: 0.6 * kSQUARE_LENGTH,
      child: CustomButton(
        text: "Retry",
        ontap: () {
          BlocProvider.of<ManagerCubit>(context).retry();
        },
        color: const Color.fromARGB(255, 138, 252, 195),
      ),
    );
  }
}