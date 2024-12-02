import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/layar/pembayaran/kirim%20bukti/kirim_bukti.dart';
import 'package:pbl_gentengku_semester5/layar/pembayaran/status%20pembayaran/status_pembayaran_sudah.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class pembayaran extends StatefulWidget {
  const pembayaran({super.key});

  @override
  State<pembayaran> createState() => _pembayaranState();
}

class _pembayaranState extends State<pembayaran> {
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
          'Pembayaran',
          style: GoogleFonts.poppins(
            color: Warna().HitamHuruf,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
            child: Column(
              children: [
                Container(
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
                        padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Silahkan transfer di rekening dibawah dan kirim bukti pembayarannya.',
                          style: GoogleFonts.poppins(
                            color: Warna().HitamHuruf,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 30),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Warna().HijauTombol,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            border: Border.all(
                              color: Warna().HijauBorderTombol,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 20, 20, 0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Warna().Putih,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 7,
                                        decoration: BoxDecoration(
                                          color: Warna().HijauBorderTombol,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Nomor Rekening Penjual',
                                        style: GoogleFonts.poppins(
                                          color: Warna().HitamHuruf,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          17, 15, 15, 0),
                                      child: Text(
                                        '351004862865624',
                                        style: GoogleFonts.poppins(
                                          color: Warna().HijauBorderTombol,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 25, 0),
                                    child: Text(
                                      '.BCA',
                                      style: GoogleFonts.poppins(
                                        color: Warna().HitamHuruf,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 20, 0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Warna().Putih,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 7,
                                        decoration: BoxDecoration(
                                          color: Warna().HijauBorderTombol,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Total yang harus dibayar',
                                        style: GoogleFonts.poppins(
                                          color: Warna().HitamHuruf,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 5, 15, 15),
                                child: Column(
                                  children: [
                                    Center(
                                      child: Table(
                                        border: TableBorder.all(
                                            color: Colors.transparent),
                                        columnWidths: const {
                                          0: FixedColumnWidth(210),
                                          1: FixedColumnWidth(20),
                                        },
                                        children: [
                                          TableRow(
                                            children: [
                                              TableCell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'Harga keseluruhan (1000 biji)',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Warna().HitamHuruf,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              TableCell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    ':',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Warna().HitamHuruf,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              TableCell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Text(
                                                      '2.000.000,00',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Warna().HitamHuruf,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              TableCell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'Biaya pengiriman',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Warna().HitamHuruf,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              TableCell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    ':',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Warna().HitamHuruf,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              TableCell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Text(
                                                      '300.000,00',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color:
                                                            Warna().HitamHuruf,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 7,
                                        right: 7,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(
                                              color: Warna().HitamHuruf,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Table(
                                      border: TableBorder.all(
                                          color: Colors.transparent),
                                      columnWidths: const {
                                        0: FixedColumnWidth(210),
                                        1: FixedColumnWidth(20),
                                      },
                                      children: [
                                        TableRow(
                                          children: [
                                            TableCell(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Total',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Warna().HitamHuruf,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            TableCell(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  ':',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Warna().HitamHuruf,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            TableCell(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                    '2.300.000,00',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Warna().HitamHuruf,
                                                    ),
                                                  ),
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
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Warna().Putih,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 7,
                                        decoration: BoxDecoration(
                                          color: Warna().HijauBorderTombol,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Kirim bukti pembayaran',
                                        style: GoogleFonts.poppins(
                                          color: Warna().HitamHuruf,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(17, 10, 20, 30),
                                child: kirim_bukti(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (e) => const status_pembayaran_sudah(),
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
                          'Pesan Sekarang',
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
    );
  }
}
