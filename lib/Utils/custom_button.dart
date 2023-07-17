import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key, required this.name, required this.function})
      : super(key: key);
  final String name;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.white),
        backgroundColor: MaterialStateProperty.all(Colors.black),
        overlayColor: MaterialStateProperty.all(
          const Color.fromARGB(255, 125, 125, 125),
        ),
      ),
      onPressed: function,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text(
          name,
          style: GoogleFonts.poppins(
            fontSize: 20.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
