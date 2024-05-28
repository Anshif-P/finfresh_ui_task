import 'package:flutter/material.dart';
import '../../util/constance/colors.dart';
import '../../util/constance/text_style.dart';

class BalanceCardWidget extends StatelessWidget {
  const BalanceCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage(
                'asset/image/WhatsApp Image 2024-05-28 at 22.23.05_8eb5d242.jpg'),
            fit: BoxFit.cover),
        color: Colors.teal[700],
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Balance',
                      style: AppText.mediumLight,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'October 23 2023',
                      style: AppText.smallOffWhite,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$19,504.00",
                      style: AppText.largeLight,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          '**** **** **** **** 4323',
                          style: AppText.smallOffWhite,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Icon(
                          Icons.remove_red_eye_outlined,
                          size: 19,
                          color: AppColor.textSecondary,
                        ),
                      ],
                    )
                  ],
                )),
            Expanded(
                flex: 2,
                child: Container(
                  height: double.maxFinite,
                  decoration: const BoxDecoration(
                      color: AppColor.buttomColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.trending_up_rounded,
                            color: AppColor.green,
                          ),
                          Text(
                            'in',
                            style: AppText.mediumGreen,
                          ),
                        ],
                      ),
                      Text(
                        '\$1021.00',
                        style: AppText.mediumdark,
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.trending_down_rounded,
                            color: AppColor.red,
                          ),
                          Text(
                            'Out',
                            style: AppText.mediumRed,
                          ),
                        ],
                      ),
                      Text(
                        '\$821.00',
                        style: AppText.mediumdark,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
