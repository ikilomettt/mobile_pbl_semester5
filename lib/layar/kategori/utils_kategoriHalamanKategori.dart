import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class utils_kategoriHalamanKategori extends StatelessWidget {
  const utils_kategoriHalamanKategori({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: Warna().PutihTombol,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
              child: Image.asset(
                'assets/background/background_halaman_awal.png',
                fit: BoxFit.cover,
                height: 170,
                width: 170,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Nama Genteng',
                    style: GoogleFonts.poppins(
                      color: Warna().HitamHuruf,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Nama Perusahaan',
                    style: GoogleFonts.poppins(
                      color: Warna().BiruHuruf,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Rp. 2000 / biji',
                    style: GoogleFonts.poppins(
                      color: Warna().MerahHuruf,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Stok : 10.000 biji',
                        style: GoogleFonts.poppins(
                          color: Warna().HitamHuruf,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      left: 15,
                    ),
                    child: Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Warna().KotakBintang,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.star,
                              size: 15,
                              color: Warna().Bintang,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '4,5',
                              style: GoogleFonts.poppins(
                                color: Warna().HitamHuruf,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}