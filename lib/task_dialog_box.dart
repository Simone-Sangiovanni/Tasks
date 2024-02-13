import 'package:flutter/material.dart';

class TaskDialogBox extends StatelessWidget {
  TaskDialogBox({super.key});

  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add a new todo item'),
      content: TextField(
        controller: _textFieldController,
        decoration: const InputDecoration(hintText: 'Type your new todo'),
        keyboardType: TextInputType.multiline,
        maxLines: 6,
        maxLength: 200,
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Add'),
          onPressed: () {
            //Navigator.of(context).pop();
            if(_textFieldController.text.isEmpty == false) {
              //_addTodoItem(_textFieldController.text);
            } /*else {
              dispose();
            }*/ //TODO: capire come chiudere la finestra dopo che è stato cliccato il tasto add
          },
        ),
      ],
    );
  }

}