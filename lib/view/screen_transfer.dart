import 'package:finfresh_machine_task_ui/util/constance/text_style.dart';
import 'package:finfresh_machine_task_ui/widgets/transfer_widget/number_widget.dart';
import 'package:finfresh_machine_task_ui/widgets/transfer_widget/send_now.dart';
import 'package:finfresh_machine_task_ui/widgets/transfer_widget/transfer_buttom.dart';
import 'package:flutter/material.dart';

import '../util/constance/colors.dart';

// ignore: must_be_immutable
class ScreenTransfer extends StatefulWidget {
  const ScreenTransfer({super.key});

  @override
  State<ScreenTransfer> createState() => _ScreenTransferState();
}

class _ScreenTransferState extends State<ScreenTransfer> {
  String inputDisplay = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: Text('Transfer', style: AppText.headingStyle),
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundImage:
                  AssetImage('asset/image/warren-bh4LQHcOcxE-unsplash.jpg'),
            ),
            const SizedBox(height: 10),
            Text(
              'Jhon Wick',
              style: AppText.mediumLight,
            ),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Account no: ',
                    style: TextStyle(color: AppColor.lightGreyColor),
                  ),
                  TextSpan(
                    text: ' 2447 32345 5839 3432 3123',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.buttomColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            const ButtonWidget(title: 'Edit'),
            const SizedBox(height: 5),
            Container(
              height: size.height / 14,
              width: size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: AppColor.white,
                  width: 0.5,
                ),
              ),
              child: Center(
                  child: Text(
                '\$ $inputDisplay',
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: AppColor.white),
              )),
            ),
            const SizedBox(height: 20),
            const TransferButtomWidget(),
            const SizedBox(height: 10),
            SizedBox(
              height: size.height / 3,
              width: size.width / 1.2,
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 60,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 35),
                itemBuilder: (context, index) {
                  if (index == 9) {
                    return GestureDetector(
                        onTap: () {
                          inputDisplay.contains('.') ? '' : inputDisplay += '.';
                          setState(() {});
                        },
                        child: NumberWidget(
                            child: const Text('.',
                                style: TextStyle(
                                    fontSize: 18, color: AppColor.white))));
                  } else if (index == 10) {
                    return GestureDetector(
                        onTap: () {
                          inputDisplay += 0.toString();
                          setState(() {});
                        },
                        child: NumberWidget(
                          child: const Center(
                              child: Text('0',
                                  style: TextStyle(
                                      fontSize: 18, color: AppColor.white))),
                        ));
                  } else if (index == 11) {
                    return GestureDetector(
                        onTap: () {
                          inputDisplay == ''
                              ? inputDisplay = ''
                              : inputDisplay = inputDisplay.substring(
                                  0, inputDisplay.length - 1);
                          setState(() {});
                        },
                        child: NumberWidget(
                          child: const Center(
                              child: Icon(Icons.backspace_outlined,
                                  color: AppColor.white)),
                        ));
                  }
                  return GestureDetector(
                    onTap: () {
                      inputDisplay += (index + 1).toString();
                      setState(() {});
                    },
                    child: NumberWidget(
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                              fontSize: 18, color: AppColor.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
