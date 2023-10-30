import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Profil'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage(
                    'assets/cewe.jpg',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Siti Aminah',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Siti@example.com',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                ProfileInfoItem(
                  icon: Icons.phone,
                  label: '+6282557389',
                ),
                ProfileInfoItem(
                  icon: Icons.location_on,
                  label: 'Jl. jalan enak lo',
                ),
                ProfileInfoItem(
                  icon: Icons.cake,
                  label: 'Tanggal Lahir: 15 Januari 1990',
                ),
                ProfileInfoItem(
                  icon: Icons.work,
                  label: 'Pekerjaan: Pengangguran',
                ),
                ProfileInfoItem(
                  icon: Icons.school,
                  label: 'Pendidikan: S1 Perkulian',
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Tindakan saat tombol "Edit Profil" ditekan
                  },
                  child: Text(
                    'Edit Profil',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileInfoItem extends StatelessWidget {
  final IconData icon;
  final String label;

  ProfileInfoItem({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 28,
        ),
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ],
    );
  }
}
