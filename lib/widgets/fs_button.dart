import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FSButton extends StatelessWidget {
  const FSButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.isLoading = false})
      : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(100),
        ),
        width: 190,
        height: 50,
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(
                text,
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.background,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    );
  }
}
