import 'package:finfresh_machine_task_ui/util/constance/colors.dart';
import 'package:finfresh_machine_task_ui/util/constance/text_style.dart';
import 'package:finfresh_machine_task_ui/widgets/statistic_widgets/expanse_widget.dart';
import 'package:finfresh_machine_task_ui/widgets/statistic_widgets/income_widget.dart';
import 'package:flutter/material.dart';

class ScreenStatistic extends StatelessWidget {
  const ScreenStatistic({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Statistic', style: AppText.headingStyle),
          backgroundColor: AppColor.primaryColor,
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 80),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: AppColor.primaryLightColor),
                child: TabBar(
                  labelColor: AppColor.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  padding: const EdgeInsets.all(3),
                  indicator: BoxDecoration(
                      color: AppColor.secondaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  tabs: const [
                    TabItem(title: 'Income'),
                    TabItem(title: 'Expance')
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(children: [
          IncomWidget(),
          ExpenseWidget(),
        ]),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String title;
  const TabItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
