import 'package:flutter/material.dart';


class InputTextField extends StatelessWidget {

  InputTextField({required this.hintText,required this.label, required this.onChanged, required this.obscureStatus});

  final String hintText;
  final String label;
  final void Function(String) onChanged;
  final bool obscureStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextField(
        // autocorrect: true,
        // autofocus: true,
        // textAlign: TextAlign.center,
        obscureText: obscureStatus,
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xFF072227),
          ),
          label: Text('$label'),
          labelStyle: TextStyle(
            fontWeight: FontWeight.w900,
            letterSpacing: 2.0,
            
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32)),
            borderSide: BorderSide(width: 40),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.blueAccent, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.blueAccent, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
        ),
      ),
    );
  }
}
