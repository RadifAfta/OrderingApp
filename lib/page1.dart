import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mau Pesen Apa hari ini ??'),
      ),
      body: ListView(
        children: <Widget>[
          _buildProductCard(
            'Nasi Goreng Mang Ali',
            'Deskripsi Produk 1 yang cukup panjang dan berisi informasi tambahan.',
            '\Rp. 12.000',
            'nasgor.jpg',
            'Stok: 10',
            'Rating: 4.5',
          ),
          _buildProductCard(
            'Bakso Ketintang',
            'Deskripsi Produk 2 yang juga memiliki informasi tambahan.',
            '\Rp. 10.000',
            'bakso.jpg',
            'Stok: 5',
            'Rating: 4.0',
          ),
          _buildProductCard(
            'Soto Babi',
            'Deskripsi Produk 3 dengan deskripsi yang lebih panjang lagi.',
            '\Rp. 14.000',
            'soto.jpg',
            'Stok: 4',
            'Rating: 4.2',
          ),
          _buildProductCard(
            'Ayam Geprek',
            'Deskripsi Produk 3 dengan deskripsi yang lebih panjang lagi.',
            '\Rp. 12.000',
            'geprek.jpg',
            'Stok: 11',
            'Rating: 4.2',
          ),
          _buildProductCard(
            'Bebek Carok',
            'Deskripsi Produk 3 dengan deskripsi yang lebih panjang lagi.',
            '\Rp. 15.000',
            'bebek.jpg',
            'Stok: 8',
            'Rating: 4.2',
          ),
          // Tambahkan produk lainnya di sini
        ],
      ),
    );
  }

  Widget _buildProductCard(String title, String description, String price, String imageAsset, String stock, String rating) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.asset(
                  'assets/$imageAsset',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.black54,
                child: Text(
                  price,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue, // Ubah warna teks judul
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey, // Ubah warna teks deskripsi
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      stock,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.red, // Ubah warna teks stok
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.star,
                          color: Colors.amber, // Ubah warna bintang
                        ),
                        Text(
                          rating,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.amber, // Ubah warna teks peringkat
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {
                  // Aksi ketika tombol "Beli" ditekan
                },
                child: const Text(
                  'Beli',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18, // Ubah ukuran teks tombol
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Aksi ketika tombol "Detail" ditekan
                },
                child: const Text(
                  'Detail',
                  style: TextStyle(
                    color: Colors.blue, // Ubah warna teks tombol "Detail"
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
