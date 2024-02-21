import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/custom_widgets/rounded_custom_button.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static const String id = "welcome_screen";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: Container(
                    height: 60.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                    'Flash Chat',

                     speed: const Duration(milliseconds: 200),
                     textStyle: const TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.blueAccent
                    ),
                                   ),],
                  totalRepeatCount: 100,
                 ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedCustomButton(title: 'Log In', color: Colors.lightBlueAccent, onPressed: (){Navigator.pushNamed(context, LoginScreen.id);},),
            RoundedCustomButton(title: 'Register', color: Colors.blueAccent, onPressed: (){Navigator.pushNamed(context, RegistrationScreen.id);},),
          ],
        ),
      ),
    );
  }
}


