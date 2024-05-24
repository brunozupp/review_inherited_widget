import 'package:flutter/material.dart';

class DrawerNavigation extends StatelessWidget {
  const DrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(),
          Row(
            children: [
              Text("Bruno"),
              Text("21/04/1999"),
            ],
          ),
        ],
      ),
    );
  }
}
