import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tombol_ButtomNavigationBar extends StatelessWidget {
  const tombol_ButtomNavigationBar({
    super.key,
    this.tekan,
    this.textTombol,
    this.warnaText,
    this.warnaTombol,
    this.icon,
  });

  final String? textTombol;
  final Widget? tekan;
  final Color? warnaTombol;
  final Color? warnaText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(5),
            ),
          ),
          builder: (BuildContext context) {
            return tekan!;
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: warnaText!,
            width: 2.0,
          ),
          color: warnaTombol!,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  color: warnaText,
                  size: 14,
                ),
              if (icon != null)
                const SizedBox(
                  width: 8,
                ),
              Text(
                textTombol!,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: warnaText!,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
