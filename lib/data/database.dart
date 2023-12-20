import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{

  List toDoList = [];
  //reference to database
  var box = Hive.box('todo');

  // run this method if the app is starting for the first time
  void createInitialData(){
    toDoList =  [
      ['Buy Groceries', false],
      ['Pay Bills', false],
      ['Go for a walk', false],
      ['Call Mom', false],
    ];
  }

  //load data from database
  void loadData(){
    
  }

  //update the database
  void updateDatabase(){
    toDoList = box.get('todolist');
  }

  //delete from database
  void deleteFromDatabase(){
    box.put("todolist", toDoList);
    
  }
}