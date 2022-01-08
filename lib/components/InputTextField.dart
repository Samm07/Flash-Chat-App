import 'package:flutter/material.dart';


class InputTextField extends StatelessWidget {

  InputTextField({required this.hintText,required this.label});

  final String hintText;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextField(
        // autocorrect: true,
        // autofocus: true,
        onChanged: (value) {},
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xFF072227),
          ),
          label: Text('$label'),
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
