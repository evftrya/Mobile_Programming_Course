import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:praktikum_1/API/model/todo_api_model.dart';
import 'package:praktikum_1/meet89/model/todo_model.dart';

class CreateTodoWidget extends StatefulWidget {
  // const CreateTodoWidget({super.key});
  final TodoModel? todo;
  final TodoApiModel? todoApi;

  final ValueChanged<String> onSubmit;

  const CreateTodoWidget(
      {Key? key, this.todo, this.todoApi, required this.onSubmit})
      : super(key: key);

  @override
  State<CreateTodoWidget> createState() => _CreateTodoWidgetState();
}

class _CreateTodoWidgetState extends State<CreateTodoWidget> {
  final controller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    controller.text = widget.todo?.title ?? '';
    controller.text = widget.todoApi?.title ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final isUpdate = widget.todo != null || widget.todoApi != null;
    return AlertDialog(
      title: Text(isUpdate ? 'Edit todo' : 'Add Todo'),
      content: Form(
        key: formKey,
        child: TextFormField(
          controller: controller,
          autofocus: true,
          validator: (value) =>
              value != null && value.isEmpty ? 'Title is Required' : null,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              Navigator.pop(context);
            }
            // widget.onSubmit(controller.text);
          },
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              widget.onSubmit(controller.text);
            }
            // widget.onSubmit()
          },
          child: Text("Submit"),
        )
      ],
    );
  }
}
