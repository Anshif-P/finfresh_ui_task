import 'package:finfresh_machine_task_ui/util/constance/colors.dart';
import 'package:finfresh_machine_task_ui/util/constance/text_style.dart';
import 'package:finfresh_machine_task_ui/widgets/home_widgets/balance_card_widget.dart';
import 'package:finfresh_machine_task_ui/widgets/home_widgets/payment_option_widget.dart';
import 'package:finfresh_machine_task_ui/widgets/home_widgets/recent_transaction_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/home_widgets/header_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(),
              const SizedBox(
                height: 20,
              ),
              const BalanceCardWidget(),
              const SizedBox(
                height: 20,
              ),
              PaymentOptionWidget(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Transation',
                    style: AppText.headingWhite,
                  ),
                  Text(
                    'See all',
                    style: AppText.mediumTeal,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              RecentTransactionWidgt()
            ],
          ),
        ),
      ),
    );
  }
}
