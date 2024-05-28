import 'package:finfresh_machine_task_ui/util/constance/colors.dart';
import 'package:flutter/material.dart';

class TransferButtomWidget extends StatelessWidget {
  const TransferButtomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: Size(size.width / 1.2, size.height / 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: AppColor.buttomColor,
        padding: EdgeInsets.zero,
      ),
      child: const Text(
        'Send now',
        style: TextStyle(fontWeight: FontWeight.w700, color: AppColor.black),
      ),
    );
  }
}
