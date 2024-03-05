import 'package:flutter/material.dart';
import 'meal_info_widget.dart';
import 'util/custom_colors.dart';
import 'util/custom_text.dart';
import 'meal_info_model.dart';

class MealScreen extends StatelessWidget {
  MealScreen({Key? key});

  final List<MealInfo> meals = [
    MealInfo(
      mealPackage: 'Lunch Dinner',
      vegPreference: '4 Adults, 4 Children',
      nonVegPreference: '2 Adults',
      bbq: 'Mushroom BBQ',
      paymentStatus: 'assets/images/paid.svg', // Replace with actual image path
      paidVia: 'assets/images/upi.svg', // Replace with actual image path
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Meals", style: CustomTextStyles.s20w600),
              const SizedBox(height: 24),
              Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: CustomColors.brandSurface),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.info, size: 20, color: CustomColors.text),
                    Text("Projected meal revenue",
                        style: CustomTextStyles.s12w500),
                    Text("₹20,000", style: CustomTextStyles.s16w500)
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 190,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: CustomColors.borderColor),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children:
                      meals.map((meal) => MealItemWidget(meal: meal)).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
