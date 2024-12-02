import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/layar/pesanan/alamat/alamat.dart';
import 'package:pbl_gentengku_semester5/layar/pesanan/alamat/detail_alamat.dart';
import 'package:pbl_gentengku_semester5/layar/pesanan/jumlah%20pembayaran/jumlah_pembayaran.dart';
import 'package:pbl_gentengku_semester5/layar/pesanan/metode%20pembayaran/metode_pembayaran.dart';
import 'package:pbl_gentengku_semester5/layar/pesanan/metode%20pengantaran/metode_pengantaran.dart';
import 'package:pbl_gentengku_semester5/layar/pesanan/produk%20dipesan/produk_dipesan.dart';
import 'package:pbl_gentengku_semester5/layar/pesanan/tombol_konfirmasi/konfirmasi_pesanan.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class Pesanan extends StatefulWidget {
  const Pesanan({super.key});

  @override
  State<Pesanan> createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Warna().PutihBackground,
      appBar: AppBar(
        backgroundColor: Warna().Putih,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
        title: Text(
          'Pesanan',
          style: GoogleFonts.poppins(
            color: Warna().HitamHuruf,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Warna().Putih,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                              child: Icon(
                                Icons.maps_home_work,
                                color: Warna().HitamHuruf,
                                size: 20,
                              ),
                            ),
                            Text(
                              'Alamat Pengiriman',
                              style: GoogleFonts.poppins(
                                color: Warna().HitamHuruf,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (e) => alamat_pemesan(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Warna().HitamHuruf,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: detail_alamat(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Warna().Putih,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                              child: Icon(
                                Icons.shopping_bag,
                                color: Warna().HitamHuruf,
                                size: 20,
                              ),
                            ),
                            Text(
                              'Produk dipesan',
                              style: GoogleFonts.poppins(
                                color: Warna().HitamHuruf,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: produk_dipesan(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Warna().Putih,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                              child: Icon(
                                Icons.monetization_on_sharp,
                                color: Warna().HitamHuruf,
                                size: 20,
                              ),
                            ),
                            Text(
                              'Metode Pembayaran',
                              style: GoogleFonts.poppins(
                                color: Warna().HitamHuruf,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: metode_pembayaran(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Warna().Putih,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                              child: Icon(
                                Icons.local_shipping,
                                color: Warna().HitamHuruf,
                                size: 20,
                              ),
                            ),
                            Text(
                              'Metode Pengantaran',
                              style: GoogleFonts.poppins(
                                color: Warna().HitamHuruf,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: metode_pengantaran(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Warna().Putih,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                              child: Icon(
                                Icons.attach_money,
                                color: Warna().HitamHuruf,
                                size: 20,
                              ),
                            ),
                            Text(
                              'Jumlah yang harus dibayar',
                              style: GoogleFonts.poppins(
                                color: Warna().HitamHuruf,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: jumlah_dibayar(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: konfimasi_pesanan(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
