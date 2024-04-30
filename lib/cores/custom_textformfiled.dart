import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String labelString;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validate;
  final TextEditingController controller;
  const CustomTextFormField({super.key, required this.labelString, this.prefixIcon, this.suffixIcon, required this.controller, this.validate});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: controller,
      validator: validate,
      decoration: InputDecoration(
        labelText: labelString ,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red)
        )
      ),
    );
  }
}
