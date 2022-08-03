import 'package:flutter/material.dart';

class GenderContainer extends StatefulWidget {
  const GenderContainer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  State<GenderContainer> createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  bool isMale = true;
  bool isFemale = false;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    color:
                        isMale == true ? Color(0xFF1f1d35) : Color(0xFF121329),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.male,
                      color: Color(0xFFfdffff),
                      size: widget.height * 0.12,
                    ),
                    Text(
                      "MALE",
                      style: TextStyle(
                        color: Color(0xFF8B8B99),
                        fontSize: widget.height * 0.04,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: widget.width * 0.08,
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
                      size: widget.height * 0.12,
                    ),
                    Text(
                      "FEMALE",
                      style: TextStyle(
                        color: Color(0xFF8B8B99),
                        fontSize: widget.height * 0.04,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
