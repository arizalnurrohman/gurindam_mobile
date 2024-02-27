import 'package:flutter/material.dart';

class TSelectionHeading extends StatelessWidget {
  const TSelectionHeading({
    super.key,
    this.onPressed,
    this.textColor,
    this.buttonTitle = 'View All',
    required this.title,
    this.showActionButton = true,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionButton)
          TextButton(onPressed: () {}, child: Text(buttonTitle))
      ],
    );
  }
}
