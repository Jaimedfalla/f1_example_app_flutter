import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final IconData icon;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        
      },
      validator: (value) {
        if(value == null) return "Required field";
        return value.length < 3? '3 letters minimum':null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration( 
        hintText: hintText,
        labelText: labelText,
        suffixIcon:  Icon(icon)
      ),
    );
  }
}