import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget{
  const TopBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      // TODO: change the icon with the real app logo
      leading: const Image(
        image: AssetImage("images/icon.png"),
      ),
      title: const Text(
        "Tasks",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }
}