import 'package:finfresh_machine_task_ui/util/constance/colors.dart';
import 'package:finfresh_machine_task_ui/util/constance/text_style.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: CircleAvatar(
            radius: 25,
            backgroundImage:
                AssetImage('asset/image/warren-bh4LQHcOcxE-unsplash.jpg'),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 5,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Hi Johan',
              style: AppText.headingStyle,
            ),
            Text(
              'Welcome Back',
              style: AppText.smallDark,
            ),
          ]),
        ),
        const Expanded(
            flex: 1,
            child: Icon(
              Icons.notifications_active_outlined,
              size: 26,
              color: AppColor.textSecondary,
            ))
      ],
    );
  }
}
