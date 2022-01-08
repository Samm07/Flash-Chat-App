import 'package:flutter/material.dart';
import 'screens/welcome_page.dart';
import 'screens/register_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF072227),
        backgroundColor: Color(0xFF072227),
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),

      ),
      
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => WelcomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/register_page': (context) => RegisterPage(),
      },
    );
  }
}

