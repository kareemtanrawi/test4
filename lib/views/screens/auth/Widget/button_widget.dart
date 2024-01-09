import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({super.key, required this.title, required this.ontap});

  final String title;

  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xE007B5EC),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: GoogleFonts.aBeeZee(
              color: const Color(0xFFFAFAFA),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
