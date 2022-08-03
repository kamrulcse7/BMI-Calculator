
import 'package:flutter/material.dart';

class MyActionButton extends StatelessWidget {
  const MyActionButton({
    Key? key,
    required this.height,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final double height;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: height * 0.07,
        height: height * 0.07,
        decoration: BoxDecoration(
          color: Color(0xFF4D4F5E),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Color(0xFFfdffff),
          size: height * 0.06,
        ),
      ),
    );
  }
}
