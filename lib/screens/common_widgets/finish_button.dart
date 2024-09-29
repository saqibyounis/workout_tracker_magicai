import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class FinishButton extends StatelessWidget {
  final Function() onPressed;
  final double fontSize;

  const FinishButton({super.key, required this.onPressed, this.fontSize = 24});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(),
      style: TextButton.styleFrom(
        backgroundColor: Colors.green, // Red background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // 4px rounded corners
        ),
      ),
      child: Text(
        S.of(context).finish,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(color: Colors.white, fontSize: fontSize), // Text size
      ),
    );
  }
}
