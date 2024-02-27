import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/providers/task_list_model.dart';

class TaskDialogBox extends StatelessWidget {
  TaskDialogBox({super.key});

  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Consumer<TaskListModel>(
      builder: (context, value, child) => AlertDialog(
        title: const Text('Add a new todo item'),
        content: SizedBox(
          width: screenWidth * 0.9,
          height: screenHeight * 0.3,
          child: TextField(
            controller: _textFieldController,
            maxLines: null,
            maxLength: 255,
            autofocus: true,
            expands: true,
            textAlignVertical: TextAlignVertical.top,
            decoration: const InputDecoration(
              hintText: 'Type your new todo',
              border: OutlineInputBorder(borderSide: BorderSide(width: 2.0))
            ),
          ),
        ),
        shape: const LinearBorder(),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Theme.of(context).primaryColor,
              shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text('Add'),
            onPressed: () {
              if(_textFieldController.text.isEmpty == false) {
                value.addTask(_textFieldController.text);
              }
              Navigator.of(context).pop(); //after the Add button has been pressed, close the AlertDialog
            },
          ),
        ],
      )
    );
  }
}