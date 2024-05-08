import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientCircularButton extends StatelessWidget {
  final Color color;
  final Icon icon;
  final VoidCallback onTap;
  final String title;

  GradientCircularButton({
    Key? key,
    required this.color,
    required this.icon,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.4),
                color.withOpacity(0.7),
                color,
              ],
            ),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.transparent,
            child: icon,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
