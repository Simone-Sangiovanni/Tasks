import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/providers/task_list_model.dart';

class TaskDialogBox extends StatelessWidget {
  TaskDialogBox({super.key});

  final TextEditingController _textFieldController = TextEditingController();
  final TextEditingController _textTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Consumer<TaskListModel>(
      builder: (context, value, child) => AlertDialog(
        title: const Text('Add a new todo item'),
        content: SizedBox(
          width: screenWidth * 0.9,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _textTitleController,
                decoration: const InputDecoration(hintText: 'Type the title'),
                keyboardType: TextInputType.multiline,
                maxLines: 2,
                maxLength: 50,
              ),
              TextField(
                controller: _textFieldController,
                decoration: const InputDecoration(hintText: 'Type your new todo'),
                keyboardType: TextInputType.multiline,
                maxLines: 7,
                maxLength: 200,
              ),
            ],
          ),
        ),
        shape: const LinearBorder(),
        actions: <Widget>[
          TextButton(
            child: const Text('Add'),
            onPressed: () {
              if(_textFieldController.text.isEmpty == false) {
                value.addTask(_textTitleController.text, _textFieldController.text);
              }
              Navigator.of(context).pop(); //after the Add button has been pressed, close the AlertDialog
            },
          ),
        ],
      )
    );
  }
}