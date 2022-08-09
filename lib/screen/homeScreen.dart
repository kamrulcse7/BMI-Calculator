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
  double _cmValue = 160;
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
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
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
                              borderRadius: BorderRadius.circular(10.0)),
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
                      width: size.width * 0.08,
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
                              borderRadius: BorderRadius.circular(10.0)),
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
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(10.0),
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
                            "${_cmValue.toInt()}",
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
                        value: _cmValue,
                        activeColor: Color(0xFFFDFFFC),
                        thumbColor: Color(0xFFEC1458),
                        inactiveColor: Color(0xFF8F8D9A),
                        onChanged: (value) {
                          setState(() {
                            _cmValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
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
                                fontSize: size.height * 0.04,
                              ),
                            ),
                            Text(
                              "${weight.toString()}",
                              style: TextStyle(
                                color: Color(0xFFfdffff),
                                fontSize: size.height * 0.08,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MyActionButton(
                                  height: size.height,
                                  icon: Icons.remove,
                                  onTap: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                MyActionButton(
                                  height: size.height,
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
                      width: size.width * 0.08,
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
                                fontSize: size.height * 0.04,
                              ),
                            ),
                            Text(
                              "${age.toString()}",
                              style: TextStyle(
                                color: Color(0xFFfdffff),
                                fontSize: size.height * 0.08,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MyActionButton(
                                  height: size.height,
                                  icon: Icons.remove,
                                  onTap: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                MyActionButton(
                                  height: size.height,
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
            ),
            Expanded(
              flex: 1,
              child: InkWell(
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
                                    "Height: ",
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
}
