import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class utils_keranjang extends StatefulWidget {
  const utils_keranjang({super.key});

  @override
  State<utils_keranjang> createState() => _utils_keranjangState();
}

class _utils_keranjangState extends State<utils_keranjang> {
  int tambahProdukKeranjang = 1000;

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
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_box_outline_blank_outlined,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: Warna().BiruTombol,
                      size: 15,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Nama Perusahaan',
                      style: GoogleFonts.poppins(
                        color: Warna().HitamHuruf,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        color: Warna().BiruBackground,
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
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
                          SizedBox(
                            width: 10,
                          ),
                          Column(
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
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(
                      color: Warna().AbuForm,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(
                      color: Warna().AbuForm,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (tambahProdukKeranjang > 1000) {
                                  tambahProdukKeranjang--;
                                }
                              });
                            },
                            icon: const Icon(
                              Icons.remove_circle,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              tambahProdukKeranjang.toString(),
                              style: GoogleFonts.poppins(
                                color: Warna().HitamHuruf,
                                fontSize: 12,
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
                                tambahProdukKeranjang++;
                              });
                            },
                            icon: const Icon(
                              Icons.add_circle_sharp,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
