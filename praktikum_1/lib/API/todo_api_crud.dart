import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:praktikum_1/API/api.dart';
import 'package:praktikum_1/API/view_todo_Api.dart';
import 'package:praktikum_1/meet89/db/todo_db.dart';

class todoApiCrud extends StatefulWidget {
  const todoApiCrud({super.key});

  @override
  State<todoApiCrud> createState() => _todoApiCrudState();
}

class _todoApiCrudState extends State<todoApiCrud> {
  Future<dynamic>? futureTodo;
  final todoDb = TodoDb();
  final todoApi = TodoApi();

  @override
  void initState() {
    super.initState();

    getTodo();
  }

  void getTodo() {
    setState(() {
      futureTodo = todoApi.get();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo API"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) => View_Todo_API(onSubmit: (title) async {
                      await todoApi.post(title: title);
                      if (!mounted) return;
                      getTodo();
                      Navigator.of(context).pop();
                    }));
          },
          child: const Icon(Icons.add)),
      body: FutureBuilder(
          future: futureTodo,
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final todos = snapshot.data!;

            return todos.isEmpty
                ? const Center(
                    child: Text('No Todo Added Yet'),
                  )
                : ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 12,
                    ),
                    itemBuilder: (context, index) {
                      final todo = todos[index];
                      return ListTile(
                          title: Text(todo.title),
                          trailing: IconButton(
                            onPressed: () async {
                              await todoApi.delete(id: todo.id);
                              getTodo();
                            },
                            icon: Icon(Icons.delete),
                            color: Colors.red,
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => View_Todo_API(
                                    todoApi: todo,
                                    onSubmit: (title) async {
                                      await todoApi.put(
                                          id: todo.id, title: title);
                                      getTodo();
                                      if (!mounted) return;
                                      Navigator.of(context).pop();
                                    }));
                          });
                    },
                    itemCount: todos.length,
                  );
          }),
    );
  }
}
