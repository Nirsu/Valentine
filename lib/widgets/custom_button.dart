import 'package:flutter/material.dart';
import 'package:valentine/themes/theme_extension.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    required this.label,
    this.onPressed,
    this.backgroundColor = Colors.green,
    this.textColor = Colors.white,
    this.size = const Size(100, 50),
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Size size;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width,
      height: widget.size.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.label,
          textAlign: TextAlign.justify,
          style: context.theme.textTheme.bodyLarge!.copyWith(
            color: widget.textColor,
            fontSize: 0.2 * widget.size.width,
          ),
        ),
      ),
    );
  }
}
