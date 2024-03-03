import 'package:flutter/material.dart';
import 'task_dialog_box.dart';

class InvokeDialogBox {
  const InvokeDialogBox._();

  /*static Future<void> displayDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // define if the user can close the dialog box tapping in another part of the screen
      builder: (BuildContext context) {
        return TaskDialogBox();
      },
    );
  }*/

  static Future<void> displayDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // define if the user can close the dialog box tapping in another part of the screen
      builder: (BuildContext context) {
        return TaskDialogBox();
      },
    );
  }
}