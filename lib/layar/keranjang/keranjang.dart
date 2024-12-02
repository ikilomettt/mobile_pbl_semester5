import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/layar/keranjang/navigasi%20bar/navigasi_bar.dart';
import 'package:pbl_gentengku_semester5/layar/keranjang/utils%20keranjang/utils_keranjang.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class keranjang extends StatefulWidget {
  const keranjang({super.key});

  @override
  State<keranjang> createState() => _keranjangState();
}

class _keranjangState extends State<keranjang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Warna().PutihBackground,
      appBar: AppBar(
        backgroundColor: Warna().Putih,
        title: Text(
          'Keranjang',
          style: GoogleFonts.poppins(
            color: Warna().HitamHuruf,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      utils_keranjang(),
                      SizedBox(
                        height: 20,
                      ),
                      utils_keranjang(),
                      SizedBox(
                        height: 20,
                      ),
                      utils_keranjang(),
                      SizedBox(
                        height: 20,
                      ),
                      utils_keranjang(),
                      SizedBox(
                        height: 20,
                      ),
                      utils_keranjang(),
                      SizedBox(
                        height: 20,
                      ),
                      utils_keranjang(),
                      SizedBox(
                        height: 20,
                      ),
                      utils_keranjang(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              navigasi_bar(),
            ],
          ),
        ),
      ),
    );
  }
}
