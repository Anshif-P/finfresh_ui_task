import 'package:finfresh_machine_task_ui/util/constance/colors.dart';
import 'package:finfresh_machine_task_ui/util/constance/text_style.dart';
import 'package:flutter/material.dart';

class PaymentOptionWidget extends StatelessWidget {
  PaymentOptionWidget({super.key});
  final List<IconData> icons = [
    Icons.payments_outlined,
    Icons.transform_outlined,
    Icons.phone_iphone,
    Icons.more_horiz
  ];
  final List<String> iconLabels = ['Pay', 'Transfer', 'Top-up', 'More'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1, crossAxisCount: 4),
        itemCount: 4,
        itemBuilder: (context, index) => Column(children: [
          CircleAvatar(
            backgroundColor: AppColor.secondaryColor,
            radius: 27,
            child: Icon(
              icons[index],
              color: index == 0 ? AppColor.buttomColor : AppColor.textSecondary,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            iconLabels[index],
            style: AppText.smallLight,
          )
        ]),
      ),
    );
  }
}
