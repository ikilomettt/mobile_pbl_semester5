import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/layar/kategori/kategori.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class utils_kategori extends StatelessWidget {
  const utils_kategori({super.key, this.namaKategori});
  final String? namaKategori;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e) => const kategori(),
          ),
        );
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Warna().PutihTombol,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Warna().BiruTombol,
                ),
                child: Icon(
                  Icons.roofing_rounded,
                  color: Warna().Putih,
                  size: 30,
                ),
              ),
            ),
            Text(
              namaKategori!,
              style: GoogleFonts.poppins(
                color: Warna().HitamHuruf,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
