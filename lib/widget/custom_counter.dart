import 'package:e36_bazzar/model/e36_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          Consumer<E36Model>(
            builder: (context, myCounter, child) {
              return GestureDetector(
                onTap: () {
                  myCounter.dec();
                },
                child: const Icon(
                  Icons.remove,
                  size: 15,
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
            child: VerticalDivider(
              thickness: 1,
              color: Colors.grey,
              width: 1,
            ),
          ),
          Consumer<E36Model>(
            builder: (context, myCounter, child) {
              return Text(
                '${myCounter.counter}',
                style: const TextStyle(fontSize: 14),
              );
            },
          ),
          const SizedBox(
            height: 20,
            child: VerticalDivider(
              thickness: 1,
              color: Colors.grey,
              width: 1,
            ),
          ),
          Consumer<E36Model>(
            builder: (context, myCounter, child) {
              return GestureDetector(
                onTap: () {
                  myCounter.inc();
                },
                child: const Icon(
                  Icons.add,
                  size: 15,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
