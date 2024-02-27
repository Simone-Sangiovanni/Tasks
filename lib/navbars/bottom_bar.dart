import 'package:flutter/material.dart';
import 'package:tasks/navbars/add_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).primaryColor,
      height: 80,
      child: Container(
        alignment: Alignment.centerRight,
        child: const AddButton(),
      ),
    );
  }

}