import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flash_chat_app/components/RoundedButton.dart';
import 'package:flash_chat_app/components/InputTextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _auth = FirebaseAuth.instance;

  String email='';
  String password='';

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("completed");
      setState(() {});
    });
  }



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
                label: 'Email',
                hintText: '',
                onChanged: (value) {
                  email=value;
                },
                obscureStatus: false,
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
                hintText: '',
                onChanged: (value) {
                  password=value;
                },
                obscureStatus: true,
              ),
            ),
            SizedBox(height: 10),
            RoundedButton(
              label: 'Register',
              onPressed: () async{
                // print(email);
                // print(password);
                try{
                  final newUser = await  _auth.createUserWithEmailAndPassword(email: email, password: password);
                  if(newUser!=null)
                    Navigator.pushNamed(context, '/chat_screen_page');
                }
                catch(e)
                {
                  print(e);
                }
              }
            ),
            Expanded(
              flex: 50,
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
