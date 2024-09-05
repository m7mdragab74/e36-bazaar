import 'package:e36_bazzar/model/e36_model.dart';
import 'package:e36_bazzar/widget/signup/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  static const TextStyle titleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 27,
  );

  static const TextStyle descriptionStyle = TextStyle(
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'M3-E36',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Image.asset(
            'assets/e36.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'BMW',
                style: titleStyle,
              ),
              Text(
                '\$27,199',
                style: titleStyle,
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'BMW M3 Coupe - Manual - E36',
            style: titleStyle,
          ),
          const SizedBox(height: 10),
          const Text(
            'When it was first introduced in 1992, the E36 M3 was initially only available as a coupe. The E36 M3 Manual coupe was initially offered with a 5-speed manual gearbox, but from the 1996 model year, a 6-speed manual became standard for European models (North American examples retained the 5-speed). The 3.0L inline six used between 1992 and 1995 produced 286hp, while the later 3.2L inline six produced 316hp.',
            style: descriptionStyle,
          ),
          const SizedBox(height: 10),
          Consumer<E36Model>(
            builder: (context, myCounter, child) {
              return Text(
                'Quantity: ${myCounter.counter}',
                style: const TextStyle(fontSize: 14),
              );
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            textColor: Colors.white,
            label: 'Done',
            height: 22,
            fontSize: 18,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
