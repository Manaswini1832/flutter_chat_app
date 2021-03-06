import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonTitle;
  final VoidCallback onPressedCallback;

  CustomRoundedButton(
    this.buttonColor,
    this.buttonTitle,
    this.onPressedCallback,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressedCallback,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonTitle,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
