import 'package:flutter/material.dart';

class CustomCounter extends StatelessWidget {
  const CustomCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.remove,
              size: 15,
            ),
          ),
          const SizedBox(
            height: 20,
            child: VerticalDivider(
              thickness: 1,
              color: Colors.grey,
              width: 1,
            ),
          ),
          const Text(
            '0',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(
            height: 20,
            child: VerticalDivider(
              thickness: 1,
              color: Colors.grey,
              width: 1,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.add,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }
}
