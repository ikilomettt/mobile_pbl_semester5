import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class metode_pembayaran extends StatefulWidget {
  const metode_pembayaran({super.key});

  @override
  State<metode_pembayaran> createState() => _metode_pembayaranState();
}

class _metode_pembayaranState extends State<metode_pembayaran> {
  String _memilihMetode = 'Transfer Bank';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
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
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _memilihMetode = 'Transfer Bank';
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: _memilihMetode == 'Transfer Bank'
                        ? Warna().BiruMudaTombol
                        : Warna().Putih,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border: Border.all(
                      color: _memilihMetode == 'Transfer Bank'
                          ? Warna().BiruTombol
                          : Warna().AbuForm,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                              ),
                              child: Icon(
                                Icons.local_atm,
                                color: Warna().HitamHuruf,
                                size: 17,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Transfer Bank',
                                style: GoogleFonts.poppins(
                                  color: Warna().HitamHuruf,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: _memilihMetode == 'Transfer Bank'
                                  ? Warna().BiruTombol
                                  : Warna().AbuForm,
                            ),
                          ),
                          child: _memilihMetode == 'Transfer Bank'
                              ? Icon(
                                  Icons.check_circle,
                                  size: 17,
                                  color: Warna().BiruTombol,
                                )
                              : null,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _memilihMetode = 'Bayar ditempat (COD)';
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: _memilihMetode == 'Bayar ditempat (COD)'
                        ? Warna().BiruMudaTombol
                        : Warna().Putih,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border: Border.all(
                      color: _memilihMetode == 'Bayar ditempat (COD)'
                          ? Warna().BiruTombol
                          : Warna().AbuForm,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                              ),
                              child: Icon(
                                Icons.handshake_rounded,
                                color: Warna().HitamHuruf,
                                size: 17,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Bayar ditempat (COD)',
                                style: GoogleFonts.poppins(
                                  color: Warna().HitamHuruf,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: _memilihMetode == 'Bayar ditempat (COD)'
                                  ? Warna().BiruTombol
                                  : Warna().AbuForm,
                            ),
                          ),
                          child: _memilihMetode == 'Bayar ditempat (COD)'
                              ? Icon(
                                  Icons.check_circle,
                                  size: 17,
                                  color: Warna().BiruTombol,
                                )
                              : null,
                        ),
                      ),
                    ],
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
