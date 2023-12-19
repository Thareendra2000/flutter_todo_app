import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  final Function(String) onAdd;

  const DialogBox({Key? key, required this.onAdd}) : super(key: key);

  @override
  _DialogBoxState createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  String newTaskName = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Create New Task'),
      content: TextField(
        onChanged: (value) {
          newTaskName = value;
        },
      ),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.blue[900],
          ),
          onPressed: () {
            widget.onAdd(newTaskName);
            Navigator.of(context).pop();
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
