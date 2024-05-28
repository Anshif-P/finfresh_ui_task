import 'package:finfresh_machine_task_ui/util/constance/colors.dart';
import 'package:finfresh_machine_task_ui/util/constance/text_style.dart';
import 'package:flutter/material.dart';

class IncomWidget extends StatelessWidget {
  const IncomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Center(
        child: Text(
          'No Data Found',
          style: AppText.mediumLight,
        ),
      ),
    );
  }
}
