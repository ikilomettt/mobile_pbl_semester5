import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class detail_alamat extends StatefulWidget {
  const detail_alamat({super.key});

  @override
  State<detail_alamat> createState() => _detail_alamatState();
}

class _detail_alamatState extends State<detail_alamat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Warna().HijauTombol,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          color: Warna().HijauBorderTombol,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: Container(
              height: 25,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                ),
                color: Warna().Putih,
              ),
              child: Row(
                children: [
                  Container(
                    height: 25,
                    width: 7,
                    decoration: BoxDecoration(
                      color: Warna().HijauBorderTombol,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Alamat Penerima',
                      style: GoogleFonts.poppins(
                          color: Warna().HijauBorderTombol,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
            child: Text(
              'Nama Penerima',
              style: GoogleFonts.poppins(
                color: Warna().HitamHuruf,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Text(
              '089209872',
              style: GoogleFonts.poppins(
                color: Warna().HijauBorderTombol,
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text(
              'Rt.027/Rw.003, dusun Krajan, desa Kedunggebang, kecamatan Tegaldlimo, kabupaten Banyuwangi',
              style: GoogleFonts.poppins(
                color: Warna().HitamHuruf,
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text(
              'puskesmas kedunggebang keselatan, perempatan besar sebelah musola baiturrohman ke barat',
              style: GoogleFonts.poppins(
                color: Warna().HitamHuruf,
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Warna().Putih,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  border: Border.all(
                    color: Warna().HijauBorderTombol,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Edit Alamat',
                    style: GoogleFonts.poppins(
                      color: Warna().HijauBorderTombol,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
