import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color? backgroundColor;
  final String? text;

  const ProfileButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll<Color>(backgroundColor!),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
