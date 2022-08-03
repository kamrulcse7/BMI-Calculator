import 'package:bmi_calculator/widget/genderContainer.dart';
import 'package:bmi_calculator/widget/heightBox.dart';
import 'package:bmi_calculator/widget/myCalculateButton.dart';
import 'package:bmi_calculator/widget/weightAgeContainer.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0C0D23),
        appBar: AppBar(
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(
              fontSize: height * 0.03,
            ),
          ),
          backgroundColor: Color(0xFF0C0D23),
        ),
        body: Container(
          height: height,
          width: width,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: GenderContainer(
                  width: width,
                  height: height,
                ),
              ),
              Expanded(
                flex: 3,
                child: HeightBox(width: width, height: height),
              ),
              Expanded(
                flex: 3,
                child: WeightAgeContainer(height: height, width: width),
              ),
              Expanded(
                flex: 1,
                child: MyCalculatButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
