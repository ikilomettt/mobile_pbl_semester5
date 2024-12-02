import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/layar/detail%20produk/detail_produk.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class utlis_rekomendasi extends StatelessWidget {
  const utlis_rekomendasi({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e) => const detail_produk(),
          ),
        );
      },
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          color: Warna().PutihTombol,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Row(
          children: [
            InkWell(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                child: Image.asset(
                  'assets/background/genteng.png',
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
                      'Genteng Karangpilang',
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
                      'Khoirul Anam',
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
                    const SizedBox(
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
                          borderRadius: const BorderRadius.all(
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
      ),
    );
  }
}
