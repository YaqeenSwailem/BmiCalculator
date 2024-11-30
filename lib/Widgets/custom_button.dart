// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:bmi_calc/Classes/main.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text ;
  final double height = 50 ;
  final Function() onPressed ;

  const CustomButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed:onPressed,
        child: Text(
          text ,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.SecondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
