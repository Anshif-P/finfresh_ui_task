import 'package:finfresh_machine_task_ui/util/constance/colors.dart';
import 'package:finfresh_machine_task_ui/util/constance/text_style.dart';
import 'package:finfresh_machine_task_ui/widgets/home_widgets/recent_transaction_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExpenseWidget extends StatelessWidget {
  const ExpenseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Container(
              height: 360,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColor.buttomColor.withOpacity(0.09),
                    AppColor.primaryColor,
                  ],
                  focal: Alignment.center,
                  radius: 0.5,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 200,
                    child: Stack(
                      children: [
                        PieChart(
                          PieChartData(
                            startDegreeOffset: 250,
                            sectionsSpace: 5,
                            sections: [
                              PieChartSectionData(
                                value: 45,
                                color: AppColor.lightRed,
                                radius: 45,
                                showTitle: false,
                              ),
                              PieChartSectionData(
                                value: 30,
                                color: AppColor.purple,
                                radius: 35,
                                showTitle: false,
                              ),
                              PieChartSectionData(
                                value: 15,
                                color: AppColor.secondaryColor,
                                radius: 20,
                                showTitle: false,
                              ),
                              PieChartSectionData(
                                value: 20,
                                color: AppColor.lightGreen,
                                radius: 30,
                                showTitle: false,
                              ),
                            ],
                          ),
                        ),
                        Positioned.fill(
                          bottom: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.darkPurple,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$459.00',
                                      style: AppText.mediumLight,
                                    ),
                                    Text(
                                      'Total Expance',
                                      style: AppText.smallDark,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ExpanseCategoryWidget(
                          color: AppColor.lightRed, title: 'Subscription'),
                      ExpanseCategoryWidget(
                          color: AppColor.purple, title: 'Food'),
                      ExpanseCategoryWidget(
                          color: AppColor.lightGreen, title: 'Shopping'),
                      ExpanseCategoryWidget(
                          color: AppColor.lightGreen, title: 'HealthCare')
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Expenses',
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
            RecentTransactionWidgt(),
          ],
        ),
      ),
    );
  }
}

class ExpanseCategoryWidget extends StatelessWidget {
  final Color color;
  final String title;
  const ExpanseCategoryWidget(
      {super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(2))),
        ),
        const SizedBox(width: 4),
        Text(
          title,
          style: AppText.smallLight,
        )
      ],
    );
  }
}
