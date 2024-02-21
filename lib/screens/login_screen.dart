import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/custom_widgets/rounded_custom_button.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String id = "logIn_screen";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? email;
  String? password;
  final _auth = FirebaseAuth.instance;
  bool circularProgress = false;
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
            Hero(
              tag: "logo",
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                email = value;
              },
              decoration: textFieldDecorationStyle.copyWith(hintText: 'Enter your email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                password = value;
              },
              decoration: textFieldDecorationStyle.copyWith(hintText: 'Enter your password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedCustomButton(title: 'Log In', color: Colors.lightBlueAccent, onPressed: () async {
              setState(() {
                circularProgress = true;
              });
              try{
                await _auth.signInWithEmailAndPassword(email: email!, password: password!);
                Get.to(()=>const ChatScreen());
              } catch(e){
                print(e);
              } finally {
                setState(() {
                  circularProgress = false;
                });
              }
            },),if (circularProgress) const Center(child: CircularProgressIndicator(color: Colors.blueAccent,)),
          ],
        ),
      ),
    );
  }
}
