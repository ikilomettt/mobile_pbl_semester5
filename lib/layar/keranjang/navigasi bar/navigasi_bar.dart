import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/layar/pesanan/pesanan.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class navigasi_bar extends StatefulWidget {
  const navigasi_bar({super.key});

  @override
  State<navigasi_bar> createState() => _navigasi_barState();
}

class _navigasi_barState extends State<navigasi_bar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Warna().Putih,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.check_box_outline_blank_outlined,
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Total Harga',
                  style: GoogleFonts.poppins(
                    color: Warna().HitamHuruf,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '-,',
                  style: GoogleFonts.poppins(
                    color: Warna().HitamHuruf,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (e) => const Pesanan(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Warna().BiruTombol,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Check Out',
                      style: GoogleFonts.poppins(
                        color: Warna().Putih,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
