import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/layar/kategori/kategori%20menu/kategori_atap.dart';
import 'package:pbl_gentengku_semester5/layar/kategori/kategori%20menu/kategori_hiasan.dart';
import 'package:pbl_gentengku_semester5/layar/kategori/kategori%20menu/kategori_sampingan.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class kategori extends StatefulWidget {
  const kategori({super.key});

  @override
  State<kategori> createState() => _kategoriState();
}

class _kategoriState extends State<kategori> {
  int _kategoriMenu = 0;
  final _halamanKategoriMenu = [
    const kategori_atap(),
    const kategori_sampingan(),
    const kategori_hiasan(),
  ];

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
          'Kategori',
          style: GoogleFonts.poppins(
            color: Warna().HitamHuruf,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          _kategoriMenu = 0;
                        },
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: _kategoriMenu == 0
                            ? Warna().BiruTombol
                            : Warna().Putih,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 2,
                              left: 10,
                            ),
                            child: Icon(
                              Icons.roofing,
                              color: _kategoriMenu == 0
                                  ? Warna().PutihTombol
                                  : Warna().AbuHuruf,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 2,
                            ),
                            child: Text(
                              'Atap',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: _kategoriMenu == 0
                                    ? Warna().PutihHuruf
                                    : Warna().AbuForm,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          _kategoriMenu = 1;
                        },
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                        color: _kategoriMenu == 1
                            ? Warna().BiruTombol
                            : Warna().Putih,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 2,
                              left: 10,
                            ),
                            child: Icon(
                              Icons.roofing,
                              color: _kategoriMenu == 1
                                  ? Warna().PutihTombol
                                  : Warna().AbuHuruf,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 2,
                            ),
                            child: Text(
                              'Sampingan',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: _kategoriMenu == 1
                                    ? Warna().PutihHuruf
                                    : Warna().AbuForm,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          _kategoriMenu = 2;
                        },
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 105,
                      decoration: BoxDecoration(
                        color: _kategoriMenu == 2
                            ? Warna().BiruTombol
                            : Warna().Putih,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 2,
                              left: 10,
                            ),
                            child: Icon(
                              Icons.roofing,
                              color: _kategoriMenu == 2
                                  ? Warna().PutihTombol
                                  : Warna().AbuHuruf,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 2,
                            ),
                            child: Text(
                              'Hiasan',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: _kategoriMenu == 2
                                    ? Warna().PutihHuruf
                                    : Warna().AbuForm,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: _halamanKategoriMenu[_kategoriMenu],
          ),
        ],
      ),
    );
  }
}
