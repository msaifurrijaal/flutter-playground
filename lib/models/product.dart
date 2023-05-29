import 'package:flutter/material.dart';

class Product {
  @required
  String judul;
  String? imageUrl;
  int? harga;
  String? deskripsi;

  Product({required this.judul, this.imageUrl, this.harga, this.deskripsi});
}
