import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:analytic/utils/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final String helperLabel;
  final bool obsecureText;
  
  const CustomTextField({@required this.label, this.prefixIcon, this.suffixIcon, this.helperLabel, @required this.obsecureText})
  : assert(label != null);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(kPaddingM),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.12),
            width: 1
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.12),
            width: 1
          ),
        ),
        hintText: label,
        hintStyle: GoogleFonts.openSans(
          textStyle: TextStyle(
            color: kBlack.withOpacity(0.5),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          )
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: kBlack.withOpacity(0.5),
        ),
        suffixIcon: Icon(
          suffixIcon,
          color: kBlack.withOpacity(0.5),
        ),
        helperText: helperLabel,
      ),
    );
  }
}