import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class popUp_tambahKeranjang extends StatefulWidget {
  const popUp_tambahKeranjang({super.key});

  @override
  State<popUp_tambahKeranjang> createState() => _popUp_tambahKeranjangState();
}

// ignore: camel_case_types
class _popUp_tambahKeranjangState extends State<popUp_tambahKeranjang> {
  int tambahProduk = 1000;

  void popUpBerhasil(BuildContext context) {
    const popupBerhasil = SnackBar(
      content: Text('Berhasil menambahkan produk ke keranjang'),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(popupBerhasil);

    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Warna().Putih,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 15,
            ),
            child: Center(
              child: Text(
                'Produk Pilihan',
                style: GoogleFonts.poppins(
                  color: Warna().BiruHuruf,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Warna().PutihBackground,
              ),
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'Produk',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Warna().HitamHuruf,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 15, 0),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Warna().BiruTombol,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama Genteng',
                    style: GoogleFonts.poppins(
                      color: Warna().HitamHuruf,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Nama Perusahaan',
                    style: GoogleFonts.poppins(
                      color: Warna().BiruHuruf,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    child: Text(
                      ' Rp. 2000 / biji',
                      style: GoogleFonts.poppins(
                        color: Warna().MerahHuruf,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Warna().PutihBackground,
              ),
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'Jumlah Produk',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Warna().HitamHuruf,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (tambahProduk > 1000) {
                          tambahProduk--;
                        }
                      });
                    },
                    icon: const Icon(Icons.remove_circle),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      tambahProduk.toString(),
                      style: GoogleFonts.poppins(
                        color: Warna().HitamHuruf,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        tambahProduk++;
                      });
                    },
                    icon: const Icon(
                      Icons.add_circle_sharp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: GestureDetector(
              onTap: () {
                popUpBerhasil(context);
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
                    'Tambahkan ke dalam keranjang',
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
    );
  }
}
