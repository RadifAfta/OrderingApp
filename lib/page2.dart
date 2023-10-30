import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: OrderListPage(),
    theme: ThemeData(
      primaryColor: Colors.blue, // Warna primer
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: Colors.orange), // Warna aksen
    ),
  ));
}

class OrderListPage extends StatelessWidget {
  const OrderListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Pesanan'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Tangani aksi pencarian
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              // Tangani aksi filter
            },
          ),
        ],
      ),
      body: OrderList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tangani aksi tombol tindakan mengambang
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class OrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        OrderListItem(
          title: 'Nasi Goreng',
          total: '\Rp. 12.000',
          date: '10 Oktober 2023',
          imageUrl: 'assets/nasgor.jpg',
          onTap: () {
            // Navigasi ke halaman detail
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => OrderDetailPage(
                title: 'Nasi Goreng mang Ali',
                total: '\Rp. 12.000',
                date: '10 Oktober 2023',
                imageUrl: 'assets/nasgor.jpg',
                description: 'Pedes mang jan lupa',
              ),
            ));
          },
        ),
        OrderListItem(
          title: 'Bakso ketintang',
          total: '\Rp. 10.000',
          date: '10 Oktober 2023',
          imageUrl: 'assets/bakso.jpg',
          onTap: () {
            // Navigasi ke halaman detail
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => OrderDetailPage(
                title: 'Bakso ketintang',
                total: '\Rp. 10.000',
                date: '10 Oktober 2023',
                imageUrl: 'assets/bakso.jpg',
                description: 'apa aja bang',
              ),
            ));
          },
        ),
        OrderListItem(
          title: 'Soto Babi',
          total: '\Rp. 14.000',
          date: '10 Oktober 2023',
          imageUrl: 'assets/soto.jpg',
          onTap: () {
            // Navigasi ke halaman detail
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => OrderDetailPage(
                title: 'Soto Babi',
                total: '\Rp. 14.000',
                date: '10 Oktober 2023',
                imageUrl: 'assets/soto.jpg',
                description: 'apa aja',
              ),
            ));
          },
        ),
        OrderListItem(
          title: 'Ayam Geprek',
          total: '\$Rp. 12.000',
          date: '10 Oktober 2023',
          imageUrl: 'assets/geprek.jpg',
          onTap: () {
            // Navigasi ke halaman detail
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => OrderDetailPage(
                title: 'Ayam Geprek',
                total: '\$Rp. 12.000',
                date: '10 Oktober 2023',
                imageUrl: 'assets/geprek.jpg',
                description: 'Apa aja',
              ),
            ));
          },
        ),
        OrderListItem(
          title: 'Bebek Carok',
          total: '\Rp. 15.000',
          date: '10 Oktober 2023',
          imageUrl: 'assets/bebek.jpg',
          onTap: () {
            // Navigasi ke halaman detail
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => OrderDetailPage(
                title: 'Bebek Carok',
                total: '\Rp. 15.000',
                date: '10 Oktober 2023',
                imageUrl: 'assets/bebek.jpg',
                description: 'Apa aja',
              ),
            ));
          },
        ),
      ],
    );
  }
}

class OrderListItem extends StatelessWidget {
  final String title;
  final String total;
  final String date;
  final String imageUrl;
  final VoidCallback onTap;

  OrderListItem({
    required this.title,
    required this.total,
    required this.date,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Total: $total'),
            Text('Tanggal: $date'),
          ],
        ),
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}

class OrderDetailPage extends StatelessWidget {
  final String title;
  final String total;
  final String date;
  final String imageUrl;
  final String description;

  OrderDetailPage({
    required this.title,
    required this.total,
    required this.date,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pesanan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl, width: 200, height: 200),
            Text('Judul: $title'),
            Text('Total: $total'),
            Text('Tanggal: $date'),
            Text('Deskripsi: $description'),
          ],
        ),
      ),
    );
  }
}
