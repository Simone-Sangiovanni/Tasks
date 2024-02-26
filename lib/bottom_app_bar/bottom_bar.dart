import 'package:flutter/material.dart';
import 'package:tasks/bottom_app_bar/add_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Theme.of(context).primaryColor,
      height: 90,
      child: Container(
        alignment: Alignment.centerRight,
        child: const AddButton(),
      ),
    );
  }

}