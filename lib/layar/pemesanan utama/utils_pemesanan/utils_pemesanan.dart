import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class utils_pemesanan extends StatefulWidget {
  const utils_pemesanan({super.key});

  @override
  State<utils_pemesanan> createState() => _utils_pemesananState();
}

class _utils_pemesananState extends State<utils_pemesanan> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          color: Warna().Putih,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Warna().BiruTombol,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'Produk Genteng',
                        style: GoogleFonts.poppins(
                          color: Warna().HitamHuruf,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Nomor pemesanan',
                        style: GoogleFonts.poppins(
                          color: Warna().HitamHuruf,
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Warna().BiruMudaTombol,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Berhasil',
                        style: GoogleFonts.poppins(
                          color: Warna().HitamHuruf,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Warna().AbuHuruf,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                      child: Image.asset(
                        'assets/background/singaaaa.png',
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Genteng',
                        style: GoogleFonts.poppins(
                          color: Warna().HitamHuruf,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '1000 biji',
                        style: GoogleFonts.poppins(
                          color: Warna().HitamHuruf,
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total harga :',
                        style: GoogleFonts.poppins(
                          color: Warna().HitamHuruf,
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        'Rp. 1.000.000',
                        style: GoogleFonts.poppins(
                          color: Warna().HitamHuruf,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Warna().BiruHuruf,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Cek Pesanan',
                        style: GoogleFonts.poppins(
                          color: Warna().PutihHuruf,
                          fontSize: 10,
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
    );
  }
}
