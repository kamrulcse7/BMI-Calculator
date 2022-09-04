import 'package:flutter/material.dart';

import '../widget/myActionButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  bool isFemale = false;
  double cmHeight = 160;
  int age = 20;
  int weight = 65;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0C0D23),
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontSize: size.width * 0.06,
          ),
        ),
        backgroundColor: Color(0xFF0C0D23),
        toolbarHeight: 70.0,
        elevation: 0.0,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Gender Start
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() {
                                isMale = true;
                                isFemale = false;
                              }),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: isMale == true
                                      ? Color(0xFF1f1d35)
                                      : Color(0xFF121329),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.male,
                                      color: Color(0xFFfdffff),
                                      size: size.height * 0.12,
                                    ),
                                    Text(
                                      "MALE",
                                      style: TextStyle(
                                        color: Color(0xFF8B8B99),
                                        fontSize: size.height * 0.04,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() {
                                isMale = false;
                                isFemale = true;
                              }),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: isFemale == true
                                      ? Color(0xFF1f1d35)
                                      : Color(0xFF121329),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.female,
                                      color: Color(0xFFfdffff),
                                      size: size.height * 0.12,
                                    ),
                                    Text(
                                      "FEMALE",
                                      style: TextStyle(
                                        color: Color(0xFF8B8B99),
                                        fontSize: size.height * 0.04,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ), // Gender End
                    SizedBox(
                      height: 16.0,
                    ),
                    // height box start
                    Expanded(
                      child: Container(
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFF1D1E35),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "HEIGHT",
                              style: TextStyle(
                                color: Color(0xFF8B8B99),
                                fontSize: size.height * 0.04,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "${cmHeight.toInt()}",
                                  style: TextStyle(
                                      color: Color(0xFFfdffff),
                                      fontSize: size.height * 0.08,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "cm",
                                  style: TextStyle(
                                    color: Color(0xFFfdffff),
                                    fontSize: size.height * 0.04,
                                  ),
                                ),
                              ],
                            ),
                            Slider(
                              min: 1,
                              max: 300,
                              value: cmHeight,
                              activeColor: Color(0xFFFDFFFC),
                              thumbColor: Color(0xFFEC1458),
                              inactiveColor: Color(0xFF8F8D9A),
                              onChanged: (value) {
                                setState(() {
                                  cmHeight = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ), // Height box end
                    SizedBox(
                      height: 16.0,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF1f1d35),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "WEIGHT (kg)",
                                    style: TextStyle(
                                      color: Color(0xFF8B8B99),
                                      fontSize: size.height * 0.03,
                                    ),
                                  ),
                                  Text(
                                    "${weight.toString()}",
                                    style: TextStyle(
                                      color: Color(0xFFfdffff),
                                      fontSize: size.height * 0.06,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      MyActionButton(
                                        icon: Icons.remove,
                                        onTap: () {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                      ),
                                      MyActionButton(
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
                            width: 20.0,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF1f1d35),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "AGE",
                                    style: TextStyle(
                                      color: Color(0xFF8B8B99),
                                      fontSize: size.height * 0.03,
                                    ),
                                  ),
                                  Text(
                                    "${age.toString()}",
                                    style: TextStyle(
                                      color: Color(0xFFfdffff),
                                      fontSize: size.height * 0.06,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      MyActionButton(
                                        icon: Icons.remove,
                                        onTap: () {
                                          setState(() {
                                            age--;
                                          });
                                        },
                                      ),
                                      MyActionButton(
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
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  bmi = (weight / (cmHeight * cmHeight) * 10000).toInt();
                  print("ppp: ${bmi}");
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          width: 250.0,
                          height: 250.0,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Height: ${cmHeight.toInt()}",
                                  style: TextStyle(fontSize: 24.0),
                                ),
                                Text(
                                  "Weight: $weight",
                                  style: TextStyle(fontSize: 24.0),
                                ),
                                Text(
                                  "Age: $age",
                                  style: TextStyle(fontSize: 24.0),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Divider(),
                                Text(
                                  "BMI: $bmi",
                                  style: TextStyle(fontSize: 24.0),
                                ),
                                
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 5),
                  width: size.width,
                  alignment: Alignment.center,
                  color: Color(0xFFEC1458),
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                      fontSize: size.width * 0.06,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFfdffff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  var bmi;
  String? result;
}
