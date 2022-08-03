import 'package:bmi_calculator/widget/myActionButton.dart';
import 'package:bmi_calculator/widget/myCalculateButton.dart';
import 'package:flutter/material.dart';



class WeightAgeContainer extends StatefulWidget {
  const WeightAgeContainer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  State<WeightAgeContainer> createState() => _WeightAgeContainerState();
}

class _WeightAgeContainerState extends State<WeightAgeContainer> {
  

  int age = 20;
  int weight = 65;
 
  @override
  Widget build(BuildContext context) {
    MyCalculatButton obj = MyCalculatButton(age: age,);
    return Container(
      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 15.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF1f1d35),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "WEIGHT",
                    style: TextStyle(
                      color: Color(0xFF8B8B99),
                      fontSize: widget.height * 0.04,
                    ),
                  ),
                  Text(
                    "${weight.toString()}",
                    style: TextStyle(
                      color: Color(0xFFfdffff),
                      fontSize: widget.height * 0.08,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyActionButton(
                        height: widget.height,
                        icon: Icons.remove,
                        onTap: () {
                          setState(() {
                            weight--;
                          });
                        },
                      ),
                      MyActionButton(
                        height: widget.height,
                        icon: Icons.add,
                        onTap: () {
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: widget.width * 0.08,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF1f1d35),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "AGE",
                    style: TextStyle(
                      color: Color(0xFF8B8B99),
                      fontSize: widget.height * 0.04,
                    ),
                  ),
                  Text(
                    "${age.toString()}",
                    style: TextStyle(
                      color: Color(0xFFfdffff),
                      fontSize: widget.height * 0.08,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyActionButton(
                        height: widget.height,
                        icon: Icons.remove,
                        onTap: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                      MyActionButton(
                        height: widget.height,
                        icon: Icons.add,
                        onTap: () {
                          setState(() {
                            age++;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
