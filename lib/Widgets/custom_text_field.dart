import 'package:flutter/material.dart';
import 'package:store_app/Utils/helper.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.onChanged,
    super.key,
    required this.hint,
    this.keyBoardType,
  });

  final String hint;
  final TextInputType? keyBoardType;

  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyBoardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        hintText: hint,
        border: outlineBorder(),
        enabledBorder: outlineBorder(),
        focusedBorder: outlineBorder(),
      ),
    );
  }
}
