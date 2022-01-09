import 'package:flutter/material.dart';
import 'screens/welcome_page.dart';
import 'screens/register_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/login_page.dart';
import 'screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/': (context) => WelcomePage(),
        '/register_page': (context) => RegisterPage(),
        '/login_page': (context) => LoginPage(),
        '/chat_screen_page': (context) => ChatScreen(),
        
      },
    );
  }
}

