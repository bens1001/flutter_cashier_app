// import 'package:dartz/dartz.dart';
// import 'package:hive/hive.dart';

// class HiveRepository {
//   late Box<T> box;

//   void init() {
//     box = Hive.box<T>('todos');
//     super.onInit();
//   }


//   Future<Either<String, List<Todo>>> fetchTodos() async {
//     try {
//       List<Todo> todos = todoBox.values.toList();
//       return Right(todos);
//     } catch (e) {
//       return Left(e.toString());
//     }
//   }

//   Future<Either<String, Todo>> createTodo(Todo todo) async {
//     try {
//       int key = await todoBox.add(todo);
//       if (connectivityService.is_down.value ||
//           connectivityService.connectionStatus.value ==
//               'No network connection') {
//         todo.id = -key;
//         await todoBox.put(key, todo);
//       }
//       Todo newTodo = todoBox.get(key)!;
//       return Right(newTodo);
//     } catch (e) {
//       return Left(e.toString());
//     }
//   }

//   Future<Either<String, Todo>> updateTodo(int key, Todo todo) async {
//     try {
//       if (todoBox.containsKey(key)) {
//         if ((connectivityService.is_down.value ||
//                 connectivityService.connectionStatus.value ==
//                     'No network connection') &&
//             todo.id! > 0) {
//           createTodoSyncUpdate(TodoSyncUpdate(updated_id: todo.id!));
//         }
//         await todoBox.put(key, todo);
//         Todo updatedTodo = todoBox.get(key)!;
//         return Right(updatedTodo);
//       } else {
//         return const Left('Todo not found');
//       }
//     } catch (e) {
//       return Left(e.toString());
//     }
//   }

//   Future<Either<String, String>> deleteTodo(int? key, Todo todo) async {
//     try {
//       if (todoBox.containsKey(key)) {
//         if ((connectivityService.is_down.value ||
//                 connectivityService.connectionStatus.value ==
//                     'No network connection') &&
//             todo.id! > 0) {
//           createTodoSyncDelete(TodoSyncDelete(deleted_id: todo.id!));
//         }
//         await todoBox.delete(key);
//         return const Right('Todo deleted successfully');
//       } else {
//         return const Left('Todo not found');
//       }
//     } catch (e) {
//       return Left(e.toString());
//     }
//   }

//   Future<void> deleteAllTodos() async {
//     await todoBox.clear();
//   }

//   List<int> getAllKeys() {
//     return todoBox.keys.cast<int>().toList();
//   }

//   int getTodoCount() {
//     return todoBox.length;
//   }

//   void watchTodos() {
//     todoBox.watch().listen((BoxEvent event) {
//       if (event.deleted) {
//         print('Todo with key ${event.key} deleted');
//       } else {
//         print('Todo with key ${event.key} updated');
//       }
//     });
//   }

//   int? getKeyByTodo(Todo todo) {
//     for (var entry in todoBox.toMap().entries) {
//       if (entry.value.id == todo.id) {
//         return entry.key as int;
//       }
//     }

//     return null;
//   }

//   Todo? getTodoByKey(int key) {
//     return todoBox.get(key);
//   }
// }
