import 'package:e36_bazzar/widget/signup/agree_terms.dart';
import 'package:e36_bazzar/widget/signup/custom_button.dart';
import 'package:e36_bazzar/widget/signup/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF3EDD7),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            CustomTextField(
              label: 'Full Name',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              label: 'Email',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              label: 'Mobile Number',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              label: 'Image Url',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              label: 'Password',
              obscureText: true,
              icon: Icon(
                Icons.visibility_off,
                size: 18,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            AgreeTerms(),
            SizedBox(
              height: 6,
            ),
            CustomButton(
              label: 'Sign Up',
              fontSize: 18,
              textColor: Colors.white,
              height: 38,
            )
          ],
        ),
      ),
    );
  }
}
