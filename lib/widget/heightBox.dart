import 'package:flutter/material.dart';

class HeightBox extends StatefulWidget {
  const HeightBox({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  double _cmValue = 160;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: widget.width,
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
                fontSize: widget.height * 0.04,
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
                      fontSize: widget.height * 0.08,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "cm",
                  style: TextStyle(
                    color: Color(0xFFfdffff),
                    fontSize: widget.height * 0.04,
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
    );
  }
}
