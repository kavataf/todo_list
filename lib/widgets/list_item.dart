import 'package:flutter/material.dart';
import 'package:todo_list/task_page.dart';
import 'package:todo_list/appcolors.dart' as AppColors;

class listItem extends StatelessWidget {
  const listItem({required this.title, required this.subtitle, required this.image,
    super.key,
  });
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, TaskScreen.id);
      },
      child: Container(
        height: 70,
        width: double.infinity,
        margin: EdgeInsets.only(right: 20, bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border(
            left: BorderSide(
              color: AppColors.taskBorder,
              width: 3.0,
            ),
          ),
          color: AppColors.taskBackground,
        ),
        child: ListTile(
          title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: Text(subtitle,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          trailing: Image.asset(image,
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
