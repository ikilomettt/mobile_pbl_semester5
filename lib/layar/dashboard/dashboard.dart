import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pbl_gentengku_semester5/layar/dashboard/utils_kategori.dart';
import 'package:pbl_gentengku_semester5/layar/dashboard/utils_rekomendasi.dart';
import 'package:pbl_gentengku_semester5/layar/pencarian/pencarian.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Warna().PutihBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Warna().BiruBackground,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Text(
                            'Halooo,',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Warna().HitamHuruf,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Text(
                            '08134527678,',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Warna().HitamHuruf,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (e) => const pencarian(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Warna().MerahHuruf,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Warna().PutihTombol,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Kategori',
                      style: GoogleFonts.poppins(
                        color: Warna().HitamHuruf,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: utils_kategori(
                        namaKategori: 'Atap',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: utils_kategori(
                        namaKategori: 'Sampingan',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: utils_kategori(
                        namaKategori: 'Hiasan',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Warna().PutihTombol,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Rekomendasi',
                      style: GoogleFonts.poppins(
                        color: Warna().HitamHuruf,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: utlis_rekomendasi(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
