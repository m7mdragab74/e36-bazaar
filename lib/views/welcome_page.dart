import 'package:e36_bazzar/views/details_page.dart';
import 'package:e36_bazzar/widget/custom_app_bar.dart';
import 'package:e36_bazzar/widget/custom_counter.dart';
import 'package:e36_bazzar/widget/signup/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3EDD7),
      appBar: const CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/e36logo.png',
            height: 400,
            width: 500,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome mohamedragab74 ur email is'),
              Text('mr341349@gmail.com and ur mobile number is'),
              Text('01060659309'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 199),
            child: Column(
              children: [
                Text(
                  'Quantity',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                CustomCounter(),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45),
            child: CustomButton(
              label: 'Add to cart',
              fontSize: 18,
              textColor: Colors.white,
              height: 38,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DetailsPage(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
