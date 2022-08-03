import 'package:flutter/material.dart';

class MyCalculatButton extends StatelessWidget {
  const MyCalculatButton({
    Key? key,
    // required this.width,
    this.weight,
    this.heightcm,
    this.age,
  }) : super(key: key);

  // final double width;
  final int? weight;
  final int? heightcm;
  final int? age;

  

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              child: Card(
                child: Container(
                  height: 300.0,
                  width: 300.0,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Card(
                    color: Colors.black12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Height:",
                          style: TextStyle(fontSize: 24.0),
                        ),
                        Text(
                          "Weight: ",
                          style: TextStyle(fontSize: 24.0),
                        ),
                        Text(
                          "Age: $age",
                          style: TextStyle(fontSize: 24.0),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text("BMI: ")
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 5),
        width: width,
        alignment: Alignment.center,
        color: Color(0xFFEC1458),
        child: Text(
          "CALCULATE",
          style: TextStyle(
            fontSize: width * 0.06,
            fontWeight: FontWeight.bold,
            color: Color(0xFFfdffff),
          ),
        ),
      ),
    );
  }
}
