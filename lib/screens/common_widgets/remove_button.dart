import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class RemoveButton extends StatelessWidget {
  final Function() onPressed;

  RemoveButton(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        S.of(context).remove,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(color: Colors.white, fontSize: 12),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.red, // Red background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // 4px rounded corners
        ),
      ),
    );
  }
}
