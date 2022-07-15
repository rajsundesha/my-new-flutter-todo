import 'package:flutter/cupertino.dart';
import 'package:todo_list_app/models/list.dart';
import 'package:todo_list_app/services/firestore_service.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();

  List<Todo> get todosCompleted =>
      _todos.where((todo) => todo.isDone == true).toList();

  void setTodos(List<Todo> todos) =>
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _todos = todos;
        notifyListeners();
      });

  bool toggleTodoStatus(Todo todo) {
    todo.isDone = !todo.isDone;
    // FirestoreService.updateTodo(todo);

    return todo.isDone;
  }

  void updateTodo(Todo todo, String title, String description) {
    todo.title = title;

    // FirestoreService.updateTodo(todo);
  }

  // static bool toggleTodoStatus(Todo todo) async {
  //   todo.isDone = !todo.isDone;
  //   await uds(Todo(
  //       formatedDate: todo.formatedDate,
  //       title: todo.title,
  //       isDone: todo.isDone));

  //   return todo.isDone;
  // }

}
