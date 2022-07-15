// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:todo_list_app/models/list.dart';
import 'package:todo_list_app/services/firestore_service.dart';
// import 'package:todo_list_app/utils/snackbars.dart';

// This is used to perform Authetication process
final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

//  This will provide us with authetication changes that happen through app
final authStateChangesProvider = StreamProvider<User?>(
  (ref) {
    return ref
        .watch(firebaseAuthProvider)
        .authStateChanges(); // we use ref.watch because we want to watch for changes.
  },
);

final databaseProvider = Provider<FirestoreService?>((ref) {
  final auth = ref.watch(authStateChangesProvider);

  String? uid = auth.asData?.value?.uid;
  if (uid != null) {
    return FirestoreService(uid: uid);
  }
  return null;
});



// void updateTodo(
//     Todo todo, String title, String id, bool isDone, DateTime formatedDate) {
//   todo.title = title;
//   FirestoreService.UpdateTodoList(
//       Todo(formatedDate: formatedDate, title: title, isDone: isDone, id: id));
// }
