import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/RoundedButton.dart';

void main() {
  runApp(WelcomePage());
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF072227),
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/welcome_bg.jpg'),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 14,
                child: SizedBox(
                  height: 1,
                ),
              ),
              Expanded(
                flex: 4,
                child: Align(
                  child: Text(
                    'Flash Chat',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundedButton(
                        label: 'Register',
                        onPressed: () {},
                      ),
                      RoundedButton(
                        label: 'Login',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
