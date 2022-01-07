import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.label, required this.onPressed});

  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 5.0,
        color: Color(0xFF35858B),
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 150.0,
          height: 42.0,
          child: Text(
            label,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );

    // ElevatedButton(
    //   onPressed: onPressed,
    //   child: Text(
    //     label,
    //     style: GoogleFonts.montserrat(
    //       textStyle: TextStyle(
    //         fontSize: 18,
    //         fontWeight: FontWeight.w400,
    //       ),
    //     ),
    //   ),
    //   style: ElevatedButton.styleFrom(
    //       primary: Color(0xFF35858B),
    //       elevation: 4.0,
    //       padding: EdgeInsets.symmetric(
    //         horizontal: 35,
    //         vertical: 10,
    //       ),
    //       shape: StadiumBorder()),
    // );
  }
}
