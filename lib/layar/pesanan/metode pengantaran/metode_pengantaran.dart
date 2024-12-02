import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class metode_pengantaran extends StatefulWidget {
  const metode_pengantaran({super.key});

  @override
  State<metode_pengantaran> createState() => _metode_pengantaranState();
}

class _metode_pengantaranState extends State<metode_pengantaran> {
  String _memilihMetode = 'Delivery';

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
                    _memilihMetode = 'Delivery';
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: _memilihMetode == 'Delivery'
                        ? Warna().BiruMudaTombol
                        : Warna().Putih,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border: Border.all(
                      color: _memilihMetode == 'Delivery'
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
                                Icons.local_shipping_outlined,
                                color: Warna().HitamHuruf,
                                size: 17,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Delivery (diantar penjual)',
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
                              color: _memilihMetode == 'Delivery'
                                  ? Warna().BiruTombol
                                  : Warna().AbuForm,
                            ),
                          ),
                          child: _memilihMetode == 'Delivery'
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
                    _memilihMetode = 'Pick Up';
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: _memilihMetode == 'Pick Up'
                        ? Warna().BiruMudaTombol
                        : Warna().Putih,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border: Border.all(
                      color: _memilihMetode == 'Pick Up'
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
                                Icons.store_mall_directory_sharp,
                                color: Warna().HitamHuruf,
                                size: 17,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Pick Up (ambil sendiri di pabrik)',
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
                              color: _memilihMetode == 'Pick Up'
                                  ? Warna().BiruTombol
                                  : Warna().AbuForm,
                            ),
                          ),
                          child: _memilihMetode == 'Pick Up'
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
