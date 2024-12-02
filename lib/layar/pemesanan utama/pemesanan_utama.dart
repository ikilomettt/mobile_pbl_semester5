import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/layar/pemesanan%20utama/utils_pemesanan/utils_pemesanan.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class pemesanan_utama extends StatefulWidget {
  const pemesanan_utama({super.key});

  @override
  State<pemesanan_utama> createState() => _pemesanan_utamaState();
}

class _pemesanan_utamaState extends State<pemesanan_utama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Warna().PutihBackground,
      appBar: AppBar(
        backgroundColor: Warna().Putih,
        title: Text(
          'Pesanan anda',
          style: GoogleFonts.poppins(
            color: Warna().HitamHuruf,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: utils_pemesanan(),
        ),
      ),
    );
  }
}
