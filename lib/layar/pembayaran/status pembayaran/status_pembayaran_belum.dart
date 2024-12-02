import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/layar/dashboard/dashboard.dart';
import 'package:pbl_gentengku_semester5/layar/pemesanan%20utama/pemesanan_utama.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class status_pembayaran extends StatefulWidget {
  const status_pembayaran({super.key});

  @override
  State<status_pembayaran> createState() => _status_pembayaranState();
}

class _status_pembayaranState extends State<status_pembayaran> {
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
          'Menunggu Konfirmasi pembayaran',
          style: GoogleFonts.poppins(
            color: Warna().HitamHuruf,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Warna().Putih,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 50, 50, 15),
                    child: Text(
                      'Menunggu konfirmasi pembayaran anda. mungkin membutuhan waktu 1 sampai 2 jam',
                      style: GoogleFonts.poppins(
                        color: Warna().HitamHuruf,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Warna().BiruTombol,
                        width: 15,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.hourglass_full_rounded,
                      size: 100,
                      color: Warna().BiruTombol,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (e) => pemesanan_utama(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                          border: Border.all(
                            color: Warna().AbuHuruf,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Cek pesanan',
                            style: GoogleFonts.poppins(
                              color: Warna().HitamHuruf,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 5, 30, 60),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (e) => Dashboard(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Warna().BiruTombol,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Kembali ke dashboard',
                            style: GoogleFonts.poppins(
                              color: Warna().PutihHuruf,
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
            ),
          ),
        ),
      ),
    );
  }
}
