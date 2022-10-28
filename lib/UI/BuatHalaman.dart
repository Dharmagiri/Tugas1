import 'package:flutter/material.dart';
// ignore: unused_import
import './detailproduk.dart';

// ignore: camel_case_types
class BuatHalaman extends StatelessWidget {
  const BuatHalaman({superkey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(title: const Text("Produck Listing")),
      // body untuk content
      // menampilkan list
      body: ListView(
        shrinkWrap: true,
        // padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        // anggota dari list berupa widget children
        children: <Widget>[
          // GestireDetector untuk menangani gesture pengguna
          GestureDetector(
            // listener berupa kulik 1x
            onTap: () {
              // navigator.push untuk berpindah halaman
              Navigator.of(context).push(MaterialPageRoute(
                // pemanggilan class detailproduk beserta pengiriman detail produk
                builder: (BuildContext context) => const Detailproduk(
                  name: "Nepenthes Ampullaria",
                  description: "Nepenthes ampullaria merupakan salah satu spesies dari genus Nepenthes yang memiliki ciri yang khas dan unik dikarenakan spesies ini memiliki bentuk kantung yang pendek, bulat dan menyerupai termos",
                  price: 75000,
                  image: "nepenthes.jpg",
                  star: 5,
                ),
              ));
            },

            
            // memanggil class ProdukBox
            child: ProductBox(
              // berisi parameter yang diperlukan di class ProdukBox
                  name: "Nepenthes Ampullaria",
                  description: "Tanaman Nepenthes Ampullaria, Jika MInat Lihat Deskripsi",
                  price: 75000,
                  image: "nepenthes.jpg",
                  star: 5,
            ),
            
          ),
          
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Venus Fly Trap",
                      description: "Venus Flytrap mempunyai daun yang berbentuk seperti mulut, yang berfungsi untuk menangkap, membunuh, dan mencerna serangga",
                      price: 120000,
                      image: "v3nusflytrap.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                      name: "Venus Fly Trap",
                      description: "Tanaman Venus Fly Trap, Jika Minat Lihat Deskripsi",
                      price: 120000,
                      image: "v3nusflytrap.jpg",
                      star: 5),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Sarracenia",
                      description: "Sarracenia adalah tumbuhan karnivora pemakan daging serangga. Bentuk tumbuhan yang satu ini mempunyai corong panjang dengan kelopak berwarna",
                      price: 400000,
                      image: "sarracenia.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                      name: "Sarracenia",
                      description: "Tanaman Sarracenia, Jika MInat Lihat Deskripsi",
                      price: 400000,
                      image: "sarracenia.jpg",
                      star: 5),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Pinguicula",
                      description:
                          "Pinguicula longifolia adalah tumbuhan karnivora menahun di Pegunungan Pirenia Tengah, dan dapat ditemukan di kedua sisi pegunungan",
                      price: 45000,
                      image: "pinguicula.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                      name: "Pinguicula",
                      description:
                          "Tanaman Pinguicula, Jika MInat Lihat Deskripsi",
                      price: 45000,
                      image: "pinguicula.jpg",
                      star: 5),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Drosera Burmanni",
                      description: "Drosera burmannii adalah tanaman karnivora yang menjebak mangsa dengan tentakel lengket yang menjerat serangga untuk makanannya",
                      price: 20000,
                      image: "drosera.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                      name: "Drosera Burmanni",
                      description: "Tanaman Drosera Burmanni, Jika MInat Lihat Deskripsi",
                      price: 20000,
                      image: "drosera.jpg",
                      star: 5),
          ),
        ],
      ),
    );
  }
}


// menggunkan stateleswidget
class ProductBox extends StatelessWidget {
  // deklarasi variable yang diterima dari Productbox
  ProductBox(
      {superkey,
      required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  // menampung variabel yang di terima untuk dapat digunakan pada class ini
  @override
  Widget build(BuildContext context) {
    // menggunkan widget container
    return Container(
      // padding
      padding: const EdgeInsets.all(2),
      // height
      // menggunakan widget card
      child: Card(
        // membuat tampilan secara horisontal atara image dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children diunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/$image",
              width: 150,
            ),
            Expanded(
                // child digunakan untuk menampung satu widget
                child: Container(
              padding: const EdgeInsets.all(5),
              // membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ini isi tampilan vertical tersebut
                children: <Widget>[
                  // menampilkan variabel dengan widget text
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text(
                    "Price: $price",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      // menampilkan widget icon dibungkus dengan row
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}