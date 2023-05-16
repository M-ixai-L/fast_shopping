import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthorizationButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const AuthorizationButton(
      {Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: Theme.of(context).colorScheme.secondary, width: 2),
          ),
        ),
        child: Text(
          title,
          style: GoogleFonts.raleway(
            fontSize: 11,
            color: Theme.of(context).colorScheme.background,
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
