import 'package:flutter/material.dart';

class MyActionButton extends StatelessWidget {
  const MyActionButton({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.height * 0.06,
        height: size.height * 0.06,
        decoration: BoxDecoration(
          color: Color(0xFF4D4F5E),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Color(0xFFfdffff),
          size: size.height * 0.05,
        ),
      ),
    );
  }
}
