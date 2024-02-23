import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/providers/task_list_model.dart';

/* TODO:
  - the dialog box must have just one text field
  - the dialog box must adapt to all the screen sizes
  - make the textField fill the AlertDialog
*/

class TaskDialogBox extends StatelessWidget {
  TaskDialogBox({super.key});

  final TextEditingController _textFieldController = TextEditingController();
  final TextEditingController _textTitleController = TextEditingController();

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
          child: ListView(
            children: [
              TextField(
                controller: _textFieldController,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Type your new todo',
                  border: OutlineInputBorder(borderSide: BorderSide(width: 2.0))
                ),
                keyboardType: TextInputType.multiline,
                //maxLines: 7,
                maxLength: 255,
              ),
            ],
          ),
        ),
        shape: const LinearBorder(),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade800,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Add'),
              onPressed: () {
                if(_textTitleController.text.isEmpty == false) {
                  value.addTask(_textTitleController.text, _textFieldController.text);
                }
                Navigator.of(context).pop(); //after the Add button has been pressed, close the AlertDialog
              },
            ),
          ),
        ],
      )
    );
  }
}