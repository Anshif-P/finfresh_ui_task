import 'package:flutter/material.dart';

import 'colors.dart';

class AppText {
  static TextStyle get xSmall => TextStyle(
        fontSize: 11.5,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        color: Colors.grey[500],
      );
  static TextStyle get standerdSize =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w600);

  static TextStyle get headingStyle => const TextStyle(
      fontSize: 19, fontWeight: FontWeight.w600, color: AppColor.headingColor);
  static TextStyle get headingWhite => const TextStyle(
      fontSize: 19, fontWeight: FontWeight.w600, color: AppColor.white);

  static TextStyle get standerdSizeWhite => const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: AppColor.white);

  static TextStyle get smallDark => const TextStyle(
        fontSize: 12,
        color: AppColor.textSecondary,
      );
  static TextStyle get smallGrey => const TextStyle(
        fontSize: 12,
        color: AppColor.grey,
      );
  static TextStyle get smallLight => const TextStyle(
        fontSize: 12,
        color: AppColor.textSecondary,
      );
  static TextStyle get smallWhite => const TextStyle(
        fontSize: 12,
        color: AppColor.white,
      );
  static TextStyle get smallOffWhite => const TextStyle(
        fontSize: 12,
        color: Color.fromARGB(255, 229, 224, 224),
      );
  static TextStyle get smallGreen => const TextStyle(
        fontSize: 12,
        color: Colors.green,
      );
  static TextStyle get smallRed => const TextStyle(
        fontSize: 12,
        color: Colors.red,
      );
  static TextStyle get mediumdark => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColor.secondaryColor,
      );

  static TextStyle get mediumLight => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      );
  static TextStyle get mediumGreen => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.green,
      );
  static TextStyle get mediumRed => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.red,
      );
  static TextStyle get mediumlightGrey => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColor.lightGreyColor,
      );
  static TextStyle get mediumTeal => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColor.headingColor,
      );
  static TextStyle get largeDark => const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: AppColor.secondaryColor,
      );
  static TextStyle get largeLight => const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
  static TextStyle get xLarge => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColor.textPrimary,
      );

  static TextStyle get toSmallLineThrough => const TextStyle(
      decoration: TextDecoration.lineThrough,
      decorationColor: Colors.grey,
      color: Colors.grey,
      fontSize: 10,
      overflow: TextOverflow.ellipsis);
}
