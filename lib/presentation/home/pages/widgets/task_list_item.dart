import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({
    super.key,
    required this.onDeleteItem,
    this.onTap,
    this.onActionTap,
    required this.itemTitle,
    required this.arrow,
    required this.color,
  });

  final Function() onDeleteItem;
  final Function()? onTap;
  final String itemTitle;
  final Function()? onActionTap;
  final IconData arrow;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              flex: 1,
              borderRadius:
                  const BorderRadius.horizontal(right: Radius.circular(10)),
              onPressed: (context) {
                onDeleteItem();
              },
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Hapus',
            ),
          ],
        ),
        child: ListTile(
          title: Text(itemTitle),
          onTap: onTap,
          trailing: IconButton(
            onPressed: onActionTap,
            icon: Icon(
              arrow,
              color: color,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
