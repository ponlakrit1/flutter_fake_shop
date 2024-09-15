import 'package:flutter/material.dart';
import 'package:flutter_fake_shop/core/theme/text_theme_extension.dart';

class FsButton extends StatelessWidget {
  final Color buttonColor;
  final String label;
  final void Function()? onPressed;
  final Widget? icon;

  const FsButton({
    super.key,
    required this.buttonColor,
    required this.onPressed,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: const Size.fromHeight(50.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 8.0),
          ],
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .h6
                .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
