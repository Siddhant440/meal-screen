import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meals/util/custom_text.dart';
import 'meal_info_model.dart';
import 'meal_info_item.dart';

class MealItemWidget extends StatelessWidget {
  final MealInfo meal;
  MealItemWidget({required this.meal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          buildMealRow('Meal Package', meal.mealPackage),
          const SizedBox(height: 8),
          buildMealRowWithImage(
              'Veg Preference', meal.vegPreference, 'assets/images/veg.svg'), //Veg Mark image path
          const SizedBox(height: 8),
          buildMealRowWithImage('Non Veg Preference', meal.nonVegPreference, 'assets/images/nonVeg.svg'), //Non Veg Mark image path
          const SizedBox(height: 8),
          buildMealRow('BBQ', meal.bbq),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Payment Status', style: CustomTextStyles.s12w500),
              SvgPicture.asset(
                meal.paymentStatus,
                width: 50,
                height: 24,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Paid via', style: CustomTextStyles.s12w500),
              SvgPicture.asset(
                meal.paidVia,
                width: 51,
                height: 22,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
