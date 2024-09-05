import 'package:e36_bazzar/model/e36_model.dart';
import 'package:e36_bazzar/views/welcome_page.dart';
import 'package:e36_bazzar/widget/signup/agree_terms.dart';
import 'package:e36_bazzar/widget/signup/custom_button.dart';
import 'package:e36_bazzar/widget/signup/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3EDD7),
      body: ListView(
        children: [
          Padding(
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
                Consumer<E36Model>(
                  builder: (context, fullName, child) {
                    return CustomTextField(
                      label: 'Full Name',
                      onChange: (value) {
                        fullName.name = value;
                        fullName.nameNotifier();
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Consumer<E36Model>(
                  builder: (context, failEmail, child) {
                    return CustomTextField(
                      label: 'Email',
                      onChange: (value) {
                        failEmail.email = value;
                        failEmail.emailNotifier();
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Consumer<E36Model>(
                  builder: (context, failNumber, child) {
                    return CustomTextField(
                      label: 'Mobile Number',
                      onChange: (value) {
                        failNumber.phoneNumber = value;
                        failNumber.phone();
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Consumer<E36Model>(
                  builder: (context, imageUrl, child) {
                    return CustomTextField(
                      label: 'Image Url',
                      onChange: (value) {
                        imageUrl.image = value;
                        imageUrl.imageNotifier();
                      },
                    );
                  },
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
        ],
      ),
    );
  }
}
