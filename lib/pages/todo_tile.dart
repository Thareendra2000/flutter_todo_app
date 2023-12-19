import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    this.onChanged,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: const EdgeInsets.all(12),
        child:Row(children: [
         //check box
         Checkbox(value: taskCompleted, onChanged: onChanged, activeColor: Colors.blue[900]),
         //task name 
         Text(
          taskName,
          style: TextStyle(decoration: taskCompleted? TextDecoration.lineThrough : null)
          ),
        ],),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
      ),
    );
  }
}