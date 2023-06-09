import 'package:fast_shopping/models/fs_product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.product,
    this.onPressed,
    this.onPressedText = 'BUY',
    required this.onDeletePressed,
    this.isAdmin = false,
    this.date,
  }) : super(key: key);

  final FSProduct product;

  final VoidCallback? onPressed;
  final String onPressedText;
  final String? date;

  final VoidCallback onDeletePressed;

  final bool isAdmin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).primaryColor,
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: date == null
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: GoogleFonts.raleway(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  product.description,
                  style: GoogleFonts.raleway(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                if (date != null)
                  Column(
                    children: [
                      Text(
                        date!,
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
              ],
            ),
            Column(
              children: [
                Text(
                  '${product.cost} \$',
                  style: GoogleFonts.raleway(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                // FSButton(onPressed: onPressed, text: 'BUY'),
                SizedBox(height: 20),
                Row(
                  children: [
                    if (isAdmin)
                      TextButton(
                        onPressed: onDeletePressed,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.error,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: 70,
                          height: 30,
                          child: Text(
                            'DELETE',
                            style: GoogleFonts.openSans(
                              fontSize: 12,
                              color: Theme.of(context).colorScheme.background,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    if (onPressed != null)
                      TextButton(
                        onPressed: onPressed,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: 70,
                          height: 30,
                          child: Text(
                            onPressedText,
                            style: GoogleFonts.openSans(
                              fontSize: 12,
                              color: Theme.of(context).colorScheme.background,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
