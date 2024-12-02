import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/layar/detail%20produk/pop%20up/popUp_tambahKeranjang.dart';
import 'package:pbl_gentengku_semester5/layar/detail%20produk/pop%20up/pupUp_pesanSekarang.dart';
import 'package:pbl_gentengku_semester5/layar/detail%20produk/tombol/tombolButtomNavigationBar.dart';

import 'package:pbl_gentengku_semester5/utils/warna.dart';
import 'package:readmore/readmore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class detail_produk extends StatefulWidget {
  const detail_produk({super.key});

  @override
  State<detail_produk> createState() => _detail_produkState();
}

class _detail_produkState extends State<detail_produk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Warna().PutihBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  //color: Warna().BiruHuruf,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Warna().BiruTombol,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Warna().BiruTombol,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Warna().BiruTombol,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Warna().BiruTombol,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  'Genteng Karangpilang',
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Warna().HitamHuruf,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  'Khoirul Anam',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Warna().BiruHuruf,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Text(
                  'Rp. 2000 / biji',
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    color: Warna().MerahHuruf,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Warna().Putih,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Deskripsi Produk',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Warna().HitamHuruf,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                child: ReadMoreText(
                  'Atap genteng adalah material penutup atap yang terbuat dari tanah liat, beton, atau keramik yang dibentuk menjadi lembaran-lembaran kecil dengan berbagai ukuran dan desain. Genteng menawarkan keunggulan dalam hal ketahanan terhadap cuaca, daya tahan yang panjang, dan kemampuan untuk mempertahankan suhu interior bangunan tetap sejuk. Warna dan bentuk genteng yang bervariasi memungkinkan fleksibilitas desain, sehingga cocok untuk berbagai gaya arsitektur. Selain itu, pemasangan atap genteng juga relatif mudah dan memerlukan perawatan minimal, menjadikannya pilihan populer bagi banyak pemilik rumah dan bangunan komersial.',
                  trimLines: 5,
                  colorClickableText: Warna().BiruHuruf,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...baca selengkapnya',
                  trimExpandedText: '...kecilkan',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    color: Warna().HitamHuruf,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Warna().Putih,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Detail Produk',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Warna().HitamHuruf,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                child: Center(
                  child: Table(
                    border: TableBorder.all(color: Colors.transparent),
                    columnWidths: const {
                      0: FixedColumnWidth(150),
                      1: FixedColumnWidth(30),
                    },
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Ukuran',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Warna().HitamHuruf,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                ':',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Warna().HitamHuruf,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '40 cm',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Warna().HitamHuruf,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Warna',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Warna().HitamHuruf,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                ':',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Warna().HitamHuruf,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Merah Bata',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Warna().HitamHuruf,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Bahan pembuatan',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Warna().HitamHuruf,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                ':',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Warna().HitamHuruf,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Tanah / lempung',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Warna().HitamHuruf,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Warna().Putih,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Ratting Pembelian',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Warna().HitamHuruf,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Warna().Bintang,
                      size: 40,
                    ),
                    Icon(
                      Icons.star,
                      color: Warna().Bintang,
                      size: 40,
                    ),
                    Icon(
                      Icons.star,
                      color: Warna().Bintang,
                      size: 40,
                    ),
                    Icon(
                      Icons.star,
                      color: Warna().Bintang,
                      size: 40,
                    ),
                    Icon(
                      Icons.star,
                      color: Warna().Bintang,
                      size: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        '(5.0)',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Warna().HitamHuruf,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        'dari 2 pembelian',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Warna().HitamHuruf,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Warna().Putih,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Konsultasi Penjual',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Warna().HitamHuruf,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 20),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Warna().Putih,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Text(
                        'WhatsApp Penjual',
                        style: GoogleFonts.poppins(
                          color: Warna().HitamHuruf,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Warna().Putih,
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: tombol_ButtomNavigationBar(
                  textTombol: 'Tambah ke keranjang',
                  warnaTombol: Warna().PutihTombol,
                  warnaText: Warna().AbuHuruf,
                  icon: Icons.add_shopping_cart_rounded,
                  tekan: const popUp_tambahKeranjang(),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: tombol_ButtomNavigationBar(
                  textTombol: 'Pesan Sekarang',
                  warnaTombol: Warna().BiruTombol,
                  warnaText: Warna().PutihHuruf,
                  icon: Icons.shopping_cart_checkout_sharp,
                  tekan: const popUp_tambahPesanan(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
