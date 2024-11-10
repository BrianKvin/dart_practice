import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  dynamic Function(bool?)? onChanged;
  dynamic Function(BuildContext)? deleteFunction;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
                onPressed: deleteFunction,
                icon: Icons.delete,
                backgroundColor: Colors.red.shade300),
            // borderRadius: BorderRadius.circular(12),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(8)),
          child: Row(children: [
            Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.black),
            Text(taskName,
                style: TextStyle(
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  color: Colors.white,
                )),
          ]),
        ),
      ),
    );
  }
}
