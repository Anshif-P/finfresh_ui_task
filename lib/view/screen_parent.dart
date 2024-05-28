import 'package:finfresh_machine_task_ui/view/screen_statistic.dart';
import 'package:finfresh_machine_task_ui/view/screen_transfer.dart';
import 'package:flutter/material.dart';
import '../util/constance/colors.dart';
import 'screen_home.dart';

class ScreenParentNavigation extends StatelessWidget {
  ScreenParentNavigation({super.key});

  final pageNotifier = ValueNotifier(0);

  final List<Widget> _screens = [
    const ScreenHome(),
    const ScreenStatistic(),
    const ScreenTransfer()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: ValueListenableBuilder(
          valueListenable: pageNotifier,
          builder: (context, value, _) => _screens[pageNotifier.value]),
      bottomNavigationBar: NavigationBar(pageNotifier: pageNotifier),
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key, required this.pageNotifier});
  final ValueNotifier<int> pageNotifier;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: pageNotifier,
        builder: (context, value, _) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: AppColor.secondaryColor,
                  border: Border(
                    top: BorderSide.none,
                  )),
              padding: const EdgeInsets.only(top: 4),
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  bottomNavigationItems(
                    icon: Icons.home_filled,
                    label: 'Home',
                    onTap: () => pageNotifier.value = 0,
                    isSelected: pageNotifier.value == 0,
                  ),
                  bottomNavigationItems(
                    icon: Icons.equalizer_rounded,
                    label: 'Stats',
                    onTap: () => pageNotifier.value = 1,
                    isSelected: pageNotifier.value == 1,
                  ),
                  bottomNavigationItems(
                    icon: Icons.transform_outlined,
                    label: 'Transfer',
                    onTap: () => pageNotifier.value = 2,
                    isSelected: pageNotifier.value == 2,
                  ),
                ],
              ),
            ),
          );
        });
  }

  Expanded bottomNavigationItems({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
    bool addTextcolor = false,
    bool hideIcon = false,
    bool isSelected = false,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          child: Column(
            children: [
              const SizedBox(height: 5),
              hideIcon
                  ? const SizedBox(height: 25)
                  : Icon(
                      icon,
                      color: isSelected
                          ? AppColor.buttomColor
                          : AppColor.textSecondary,
                    ),
              const SizedBox(height: 5),
              Text(
                label,
                style: TextStyle(
                  color: isSelected
                      ? AppColor.buttomColor
                      : AppColor.textSecondary,
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
