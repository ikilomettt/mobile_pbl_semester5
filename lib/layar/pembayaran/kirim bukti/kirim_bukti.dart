import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pbl_gentengku_semester5/utils/warna.dart';

class kirim_bukti extends StatefulWidget {
  const kirim_bukti({super.key});

  @override
  State<kirim_bukti> createState() => _kirim_buktiState();
}

class _kirim_buktiState extends State<kirim_bukti> {
  File? _image;
  final picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final XFile? pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                border: Border.all(
                  color: Warna().AbuForm,
                ),
              ),
              child: Center(
                child: _image == null
                    ? Text(
                        'Tidak ada gambar',
                        style: GoogleFonts.poppins(
                          color: Warna().HijauBorderTombol,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : Image.file(
                        _image!,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
            child: GestureDetector(
              onTap: () => _pickImage(ImageSource.gallery),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Warna().HijauBorderTombol,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Unggah Gambar',
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
