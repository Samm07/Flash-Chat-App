import 'package:flash_chat_app/screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flash_chat_app/components/RoundedButton.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RoundedButton(
                      label: 'Register',
                      onPressed: () {
                        Navigator.pushNamed(context, '/register_page');
                      },
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
    );
  }
}



