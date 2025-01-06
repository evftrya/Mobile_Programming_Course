import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_1/API/model/todo_api_model.dart';
import 'package:praktikum_1/meet89/model/todo_model.dart';

class View_Todo_API extends StatefulWidget {
  final TodoModel? todo;
  final TodoApiModel? todoApi;
  final ValueChanged<String> onSubmit;

  const View_Todo_API(
      {Key? key, this.todo, this.todoApi, required this.onSubmit})
      : super(key: key);

  @override
  State<View_Todo_API> createState() => _View_Todo_APIState();
}

class _View_Todo_APIState extends State<View_Todo_API> {
  final controller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    controller.text = widget.todo?.title ?? '';
    controller.text = widget.todoApi?.title ?? '';

    // if (widget.todo != null) {
    //   controller.text = widget.todo?.title ?? '';
    // } else if (widget.todoApi != null) {
    //   controller.text = widget.todoApi?.title ?? '';
    // }
  }

  @override
  Widget build(BuildContext context) {
    final isUpdate = widget.todo!=null || widget.todoApi != null;
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
          child: Text("Cancel"),
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
