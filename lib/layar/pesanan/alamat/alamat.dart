import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_gentengku_semester5/layar/pesanan/pesanan.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class alamat_pemesan extends StatefulWidget {
  const alamat_pemesan({super.key});

  @override
  State<alamat_pemesan> createState() => _alamat_pemesanState();
}

class _alamat_pemesanState extends State<alamat_pemesan> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _noHpController = TextEditingController();
  final TextEditingController _RtRwController = TextEditingController();
  final TextEditingController _dusunController = TextEditingController();
  final TextEditingController _desaController = TextEditingController();
  final TextEditingController _kecamatanController = TextEditingController();
  final TextEditingController _kabupatenController = TextEditingController();
  final TextEditingController _spesifikAlamatController =
      TextEditingController();

  bool _isNamaComplete = true;
  bool _isNoHpComplete = true;
  bool _isRtRwComplete = true;
  bool _isDusunComplete = true;
  bool _isDesaComplete = true;
  bool _isKecamatanComplete = true;
  bool _isKabupatenComplete = true;
  bool _isSpesifikAlamatComplete = true;

  bool get _isAnyFieldIncomplete =>
      !_isNamaComplete ||
      !_isNoHpComplete ||
      !_isRtRwComplete ||
      !_isDusunComplete ||
      !_isDesaComplete ||
      !_isKecamatanComplete ||
      !_isKabupatenComplete ||
      !_isSpesifikAlamatComplete;

  void _addAlamat() {
    setState(() {
      _isNamaComplete = _namaController.text.isNotEmpty;
      _isNoHpComplete = _noHpController.text.isNotEmpty;
      _isRtRwComplete = _RtRwController.text.isNotEmpty;
      _isDesaComplete = _desaController.text.isNotEmpty;
      _isDusunComplete = _dusunController.text.isNotEmpty;
      _isKecamatanComplete = _kecamatanController.text.isNotEmpty;
      _isKabupatenComplete = _kabupatenController.text.isNotEmpty;
      _isSpesifikAlamatComplete = _spesifikAlamatController.text.isNotEmpty;
    });
    if (_isNamaComplete &&
        _isNoHpComplete &&
        _isRtRwComplete &&
        _isDusunComplete &&
        _isDesaComplete &&
        _isKecamatanComplete &&
        _isKabupatenComplete &&
        _isSpesifikAlamatComplete) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.check_circle_outlined,
                    size: 60,
                    color: Warna().BiruTombol,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Berhasil Menambahkan Alamat',
                    style: GoogleFonts.poppins(
                      color: Warna().HitamHuruf,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Warna().BiruTombol,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Pesanan(),
                            ),
                          );
                        },
                        child: Text(
                          'OK',
                          style: GoogleFonts.poppins(
                            color: Warna().Putih,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    }
  }

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
          'Alamat Penerima',
          style: GoogleFonts.poppins(
            color: Warna().HitamHuruf,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Warna().Putih,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        'Nama Penerima',
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
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  controller: _namaController,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: _isNamaComplete
                            ? Warna().HitamHuruf
                            : Warna().MerahHuruf,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: _isNamaComplete
                            ? Warna().BiruHuruf
                            : Warna().MerahHuruf,
                      ),
                    ),
                    hintText: "masukkan nama penerima",
                  ),
                  cursorColor: Warna().BiruHuruf,
                  style: GoogleFonts.poppins(
                    color: Warna().HitamHuruf,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Warna().Putih,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        'Nomor Telpon Penerima',
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
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  controller: _noHpController,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: _isNoHpComplete
                            ? Warna().HitamHuruf
                            : Warna().MerahHuruf,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: _isNoHpComplete
                            ? Warna().BiruHuruf
                            : Warna().MerahHuruf,
                      ),
                    ),
                    hintText: "masukkan no.telpon",
                  ),
                  cursorColor: Warna().BiruHuruf,
                  style: GoogleFonts.poppins(
                    color: Warna().HitamHuruf,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Warna().Putih,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        'Alamat Penerima',
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
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Table(
                        border: TableBorder.all(color: Colors.transparent),
                        columnWidths: const {
                          0: FixedColumnWidth(100),
                          1: FixedColumnWidth(30),
                        },
                        children: [
                          TableRow(
                            children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'RT / RW',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Warna().HitamHuruf,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    ':',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Warna().HitamHuruf,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: TextFormField(
                                      controller: _RtRwController,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: _isRtRwComplete
                                                ? Warna().HitamHuruf
                                                : Warna().MerahHuruf,
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: _isRtRwComplete
                                                ? Warna().BiruHuruf
                                                : Warna().MerahHuruf,
                                          ),
                                        ),
                                      ),
                                      cursorColor: Warna().BiruHuruf,
                                      style: GoogleFonts.poppins(
                                        color: Warna().HitamHuruf,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
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
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Dusun',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Warna().HitamHuruf,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    ':',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Warna().HitamHuruf,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: TextFormField(
                                      controller: _dusunController,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: _isDusunComplete
                                                ? Warna().HitamHuruf
                                                : Warna().MerahHuruf,
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: _isDusunComplete
                                                ? Warna().BiruHuruf
                                                : Warna().MerahHuruf,
                                          ),
                                        ),
                                      ),
                                      cursorColor: Warna().BiruHuruf,
                                      style: GoogleFonts.poppins(
                                        color: Warna().HitamHuruf,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
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
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Desa',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Warna().HitamHuruf,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    ':',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Warna().HitamHuruf,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: TextFormField(
                                      controller: _desaController,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: _isDesaComplete
                                                ? Warna().HitamHuruf
                                                : Warna().MerahHuruf,
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: _isDesaComplete
                                                ? Warna().BiruHuruf
                                                : Warna().MerahHuruf,
                                          ),
                                        ),
                                      ),
                                      cursorColor: Warna().BiruHuruf,
                                      style: GoogleFonts.poppins(
                                        color: Warna().HitamHuruf,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
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
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Kecamatan',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Warna().HitamHuruf,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    ':',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Warna().HitamHuruf,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: TextFormField(
                                      controller: _kecamatanController,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: _isKecamatanComplete
                                                ? Warna().HitamHuruf
                                                : Warna().MerahHuruf,
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: _isKecamatanComplete
                                                ? Warna().BiruHuruf
                                                : Warna().MerahHuruf,
                                          ),
                                        ),
                                      ),
                                      cursorColor: Warna().BiruHuruf,
                                      style: GoogleFonts.poppins(
                                        color: Warna().HitamHuruf,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
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
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Kabupaten',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Warna().HitamHuruf,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    ':',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Warna().HitamHuruf,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: TextFormField(
                                      controller: _kabupatenController,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: _isKabupatenComplete
                                                ? Warna().HitamHuruf
                                                : Warna().MerahHuruf,
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: _isKabupatenComplete
                                                ? Warna().BiruHuruf
                                                : Warna().MerahHuruf,
                                          ),
                                        ),
                                      ),
                                      cursorColor: Warna().BiruHuruf,
                                      style: GoogleFonts.poppins(
                                        color: Warna().HitamHuruf,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
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
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Warna().Putih,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        'Spesifik Alamat',
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
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  controller: _spesifikAlamatController,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: _isSpesifikAlamatComplete
                            ? Warna().HitamHuruf
                            : Warna().MerahHuruf,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: _isSpesifikAlamatComplete
                            ? Warna().BiruHuruf
                            : Warna().MerahHuruf,
                      ),
                    ),
                    hintText: "masukkan spesifik alamat anda",
                  ),
                  cursorColor: Warna().BiruHuruf,
                  style: GoogleFonts.poppins(
                    color: Warna().HitamHuruf,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              if (_isAnyFieldIncomplete)
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Warna().MerahHuruf,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.no_accounts_sharp,
                            color: Warna().Putih,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Silahkan alamat anda terlebih dahulu!',
                            style: GoogleFonts.poppins(
                              color: Warna().Putih,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: GestureDetector(
                  onTap: _addAlamat,
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
                        'Tambahkan Alamat',
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
    );
  }
}
