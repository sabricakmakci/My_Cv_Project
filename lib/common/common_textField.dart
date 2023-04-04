import 'package:flutter/material.dart';
import 'package:untitled/utils/util_color.dart';

TextField commonTextField(String text, IconData icon, bool isPasswordType, TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: appColors.mein,
    style: TextStyle(color: appColors.mein),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: appColors.mein,
      ),
      labelText: text,
      labelStyle: TextStyle(color: appColors.mein),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0), borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType ? TextInputType.visiblePassword : TextInputType.emailAddress,
  );
}
