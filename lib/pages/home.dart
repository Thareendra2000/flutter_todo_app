import 'package:flutter/material.dart';
import 'package:todo_app/pages/todo_tile.dart';
import 'package:todo_app/pages/dialog_box.dart'; // Import the new file

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of todos
  List toDoList = [
    ['Task 1', false],
    ['Task 2', true],
    ['Do Exercises', false],
    ['Task 4', false],
  ];

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  // create new task
  void createNewTask(String newTaskName) {
    setState(() {
      toDoList.add([newTaskName, false]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'TO DO',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return DialogBox(
                onAdd: createNewTask,
              );
            },
          );
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.blue[900],
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index));
        },
      ),
    );
  }
}
