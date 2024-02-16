import 'package:flutter/material.dart';
import 'package:tasks/task_dialog_box.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});



  Future<void> _displayDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // define if the user can close the dialog box tapping in another part of the screen
      builder: (BuildContext context) {
        return TaskDialogBox();
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _displayDialog(context);
      },
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
    );
  }
}