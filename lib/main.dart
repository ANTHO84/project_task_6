import 'package:flutter/material.dart';
import 'package:project_task_6/screens/home_page.dart';


void main () => runApp( BMICalculator());


class BMICalculator extends StatelessWidget {
  const BMICalculator ({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp (
      debugShowCheckedModeBanner: false,
      title : 'BMI CALCULATOR',
      home: HomePage(), 
    );
    
  }
}

