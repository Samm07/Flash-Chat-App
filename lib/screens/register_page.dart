import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flash_chat_app/components/RoundedButton.dart';
import 'package:flash_chat_app/components/InputTextField.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
          children: <Widget>[
            Expanded(
              flex: 150,
              child: SizedBox(
                height: 1,
              ),
            ),
            Expanded(
              flex: 154,
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
              flex: 30,
              child: InputTextField(
                label: 'Username',
                hintText: 'We bet your user name is cool',
              ),
            ),
            Expanded(
              flex: 4,
              child: SizedBox(
                width: 1,
              ),
            ),
            Expanded(
              flex: 30,
              child: InputTextField(
                label: 'Password',
                hintText: 'Ssshh. It\'s only between us',
              ),
            ),
            SizedBox(height: 10),
            RoundedButton(
              label: 'Register',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              flex: 40,
              child: SizedBox(
                height: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
