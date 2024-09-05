import 'package:e36_bazzar/model/e36_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Consumer<E36Model>(
            builder: (context, image, child) {
              return CircleAvatar(
                radius: 28,
                backgroundColor: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.6,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(image.image.isNotEmpty
                        ? image.image
                        : 'https://avatar.iran.liara.run/public/31'),
                  ),
                ),
              );
            },
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer<E36Model>(
                builder: (context, name, child) {
                  return Text(
                    'Hi, ${name.name}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              const Text(
                'How is your health?',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: const [
        Icon(Icons.search),
        SizedBox(width: 10),
        Icon(Icons.notifications_none),
        SizedBox(width: 8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
