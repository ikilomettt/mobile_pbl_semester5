import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/layar/pembayaran/pembayaran.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class konfimasi_pesanan extends StatelessWidget {
  const konfimasi_pesanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (e) => const pembayaran(),
            ),
          );
        },
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Warna().BiruTombol,
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Center(
            child: Text(
              'Pesan Sekarang',
              style: GoogleFonts.poppins(
                color: Warna().PutihHuruf,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
