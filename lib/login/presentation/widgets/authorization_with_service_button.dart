import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthorizationWithServiceButton extends StatelessWidget {
  final String icon;
  final Color backgroundColor;
  final Color? color;
  final VoidCallback onTap;

  const AuthorizationWithServiceButton({
    Key? key,
    required this.backgroundColor,
    this.color,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const iconSize = 50.0;
    return Padding(
      padding: const EdgeInsets.only(bottom: 34, top: 12),
      child: IconButton(
        onPressed: onTap,
        iconSize: iconSize,
        icon: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(3),
          ),
          child: SvgPicture.asset(
            'assets/icons/$icon.svg',
            height: 19,
            color: color,
          ),
        ),
      ),
    );
  }
}
