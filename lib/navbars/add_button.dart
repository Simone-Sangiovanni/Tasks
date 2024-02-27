import 'package:flutter/material.dart';
import 'package:tasks/dialogBox/invoke_dialog_box.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
          backgroundColor: Colors.orange.shade700,
          shape: const CircleBorder(eccentricity: 0),
          fixedSize: const Size(60, 60),
          elevation: 20,
          shadowColor: Colors.black
      ),
      icon: const Icon(
        Icons.add,
        color: Colors.white,
        size: 40,
      ),
      onPressed: () {
        InvokeDialogBox.displayDialog(context);
      },
    );
  }
}