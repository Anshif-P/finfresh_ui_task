import 'package:finfresh_machine_task_ui/util/constance/colors.dart';
import 'package:finfresh_machine_task_ui/util/constance/text_style.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  const ButtonWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: AppColor.darkTeal,
            width: 1,
          ),
        ),
      ),
      child: Text(
        title,
        style: AppText.mediumTeal,
      ),
    );
  }
}
