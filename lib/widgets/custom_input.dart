import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final IconData? icon;
  final TextInputType? inputType;
  final bool isPassword;
  final String formProperty;
  final Map<String,String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.icon,
    this.inputType,
    this.isPassword = false,
    required this.formProperty,
    required this.formValues
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if(value == null) return "Required field";
        return value.length < 3? '3 letters minimum':null;
      },
      keyboardType: inputType,
      obscureText: isPassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration( 
        hintText: hintText,
        labelText: labelText,
        suffixIcon:  icon != null? Icon(icon):null
      ),
    );
  }
}