import 'package:finfresh_machine_task_ui/util/constance/colors.dart';
import 'package:flutter/material.dart';
import '../../util/constance/text_style.dart';

class RecentTransactionWidgt extends StatelessWidget {
  RecentTransactionWidgt({
    super.key,
  });

  final List<IconData> icons = [
    Icons.ac_unit_rounded,
    Icons.public,
    Icons.draw,
    Icons.adobe_outlined,
    Icons.food_bank_rounded
  ];
  final List<String> iconLabels = [
    'Nk Ever .ltd',
    'Dribbble',
    'Figma',
    'Adobe',
    'Food'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemCount: icons.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 48,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    height: double.maxFinite,
                    decoration: const BoxDecoration(
                        color: AppColor.secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Icon(
                      icons[index],
                      color: AppColor.textSecondary,
                    ),
                  )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        iconLabels[index],
                        style: AppText.mediumLight,
                      ),
                      Text(
                        'Project - 24 Feb',
                        style: AppText.smallLight,
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: index == 0
                      ? Text(
                          "+\$273",
                          style: AppText.smallGreen,
                        )
                      : Text(
                          "-\$173",
                          style: AppText.smallRed,
                        )),
            ],
          ),
        );
      },
    ));
  }
}
