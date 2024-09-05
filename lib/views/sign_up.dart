import 'package:e36_bazzar/views/welcome_page.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xffF3EDD7),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            const CustomTextField(
              label: 'Full Name',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(
              label: 'Email',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(
              label: 'Mobile Number',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(
              label: 'Image Url',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(
              label: 'Password',
              obscureText: true,
              icon: Icon(
                Icons.visibility_off,
                size: 18,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const AgreeTerms(),
            const SizedBox(
              height: 6,
            ),
            CustomButton(
              label: 'Sign Up',
              fontSize: 18,
              textColor: Colors.white,
              height: 38,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const WelcomePage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
