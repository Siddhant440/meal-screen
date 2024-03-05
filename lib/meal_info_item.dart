import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meals/util/custom_colors.dart';
import 'package:meals/util/custom_text.dart';

Row buildMealRow(String title, String value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: CustomTextStyles.s12w500,
      ),
      Text(value,
          style:
              CustomTextStyles.s12w500.copyWith(color: CustomColors.textBody1)),
    ],
  );
}

Row buildMealRowWithImage(String title, String value, String imagePath) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Text(
            title,
            style: CustomTextStyles.s12w500,
          ),
        ],
      ),
      Row(
        children: [
          SvgPicture.asset(
            imagePath,
            width: 15,
            height: 15,
          ),
          const SizedBox(width: 5),
          Text(
            value,
            style: CustomTextStyles.s12w500
                .copyWith(color: CustomColors.textBody1),
          ),
        ],
      )
    ],
  );
}
