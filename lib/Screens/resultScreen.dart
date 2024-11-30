// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:bmi_calc/Classes/main.dart';

class Resultscreen extends StatelessWidget {
  final double bmi;

  const Resultscreen({super.key, required this.bmi});

  String BmiStatus() {
    if (bmi <= 18.5) {
      return 'Underweight';
    } else if (bmi > 18.5 && bmi < 24.9) {
      return 'Normal Weight';
    } else if (bmi > 25 && bmi < 39.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  Color BmiColorStatus() {
    if (bmi <= 18.5) {
      return Color(0xFFFFE189);
    } else if (bmi > 18.5 && bmi < 24.9) {
      return Color(0xFF8CD47E);
    } else if (bmi > 25 && bmi < 39.9) {
      return Color(0xFFFFB54C);
    } else {
      return Color(0xFFFF6961);
    }
  }

  String CaloriesRecommendation() {
    if (bmi <= 18.5) {
      return 'You should consume more calories, to gain weight. About: 2500-3000 kcal / day.';
    } else if (bmi > 18.5 && bmi < 24.9) {
      return 'The calories taken should be balanced. About: 2000-2500 kcal / day.';
    } else if (bmi > 25 && bmi < 39.9) {
      return 'A diet that reduces calories should be followed. About: 1500-1800 kcal / day.';
    } else {
      return 'A diet that decreases a lot of calories should be followed under supervision. About : 1200-1500 kcal / day.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.MainColor,
      appBar: AppBar(
        backgroundColor: AppColors.MainColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        title: Text(
          'Bmi Calculater',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                Text('Your Bmi :   ',
                    style: TextStyle(
                      color: Colors.white,
                       fontSize: 25)),

                Text(bmi.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    )),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              BmiStatus(),
              style: TextStyle(
                color: BmiColorStatus(),
                fontSize: 25,
              ),
            ),
            SizedBox(
              width: 350,
              height: 200,
              child: Center(
                child: Text(CaloriesRecommendation(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
