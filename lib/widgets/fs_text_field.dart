import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FSTextFormField extends StatelessWidget {
  final String title;
  final TextEditingController textEditingController;
  final TextInputType? textInputType;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final String? Function(String?)? validator;
  final bool enabled;
  final bool isPassword;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;

  const FSTextFormField({
    Key? key,
    required this.title,
    required this.textEditingController,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.validator,
    this.enabled = true,
    this.isPassword = false,
    this.focusNode,
    this.nextFocusNode,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(bottom: 1),
            height: 23,
            child: Text(
              title,
              style: GoogleFonts.raleway(
                fontSize: 12,
                color:
                    Theme.of(context).colorScheme.background.withOpacity(0.8),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextFormField(
            obscureText: isPassword,
            controller: textEditingController,
            focusNode: focusNode ?? null,
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(nextFocusNode ?? FocusNode());
            },
            validator: (validator == null)
                ? (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill ${title.toLowerCase()}';
                    } else if (value.trim() == '') {
                      return 'Please fill ${title.toLowerCase()}';
                    }
                    return null;
                  }
                : validator,
            enabled: enabled,
            style: TextStyle(color: Theme.of(context).colorScheme.background),
            cursorColor: Theme.of(context).colorScheme.secondary,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              fillColor: const Color(0xff9ED8C3),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            keyboardType: textInputType,
            textInputAction: textInputAction,
          ),
        ],
      ),
    );
  }
}
