import 'package:flutter/material.dart';
import 'package:pbl_gentengku_semester5/layar/kategori/utils_kategoriHalamanKategori.dart';

class kategori_atap extends StatelessWidget {
  const kategori_atap({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              utils_kategoriHalamanKategori(),
              SizedBox(
                height: 10,
              ),
              utils_kategoriHalamanKategori(),
              SizedBox(
                height: 10,
              ),
              utils_kategoriHalamanKategori(),
              SizedBox(
                height: 10,
              ),
              utils_kategoriHalamanKategori(),
              SizedBox(
                height: 10,
              ),
              utils_kategoriHalamanKategori(),
              SizedBox(
                height: 10,
              ),
              utils_kategoriHalamanKategori(),
              SizedBox(
                height: 10,
              ),
              utils_kategoriHalamanKategori(),
              SizedBox(
                height: 10,
              ),
              utils_kategoriHalamanKategori(),
              SizedBox(
                height: 10,
              ),
              utils_kategoriHalamanKategori(),
            ],
          ),
        ),
      ),
    );
  }
}
