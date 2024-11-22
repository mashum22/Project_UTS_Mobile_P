import 'package:flutter/material.dart';
import 'login.dart'; // Pastikan untuk mengimpor halaman login

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Foto Profil
              Center(
                child: CircleAvatar(
                  radius: 50, // Ukuran foto profil
                  backgroundImage: AssetImage('assets/image/mashum.jpg'), // Ganti dengan URL foto profil
                ),
              ),
              SizedBox(height: 20),

              // Deskripsi Nama Nasabah
              Text(
                'Nama',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black), // Ukuran font diperbesar
              ),
              _buildProfileField('Muhammad Ma`shum'),

              SizedBox(height: 20),

              // Deskripsi Jenis Kelamin
              Text(
                'Jenis Kelamin',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black), // Ukuran font diperbesar
              ),
              _buildProfileField('Laki-laki'),

              SizedBox(height: 20),

              // Deskripsi Alamat
              Text(
                'Alamat',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black), // Ukuran font diperbesar
              ),
              _buildProfileField('Rt/Rw 002/010 Dsn Sendangrejo Ds banjardowo , jombang, jombang'),

              SizedBox(height: 30), // Jarak sebelum tombol logout
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Arahkan pengguna ke halaman login
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text('Logout'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Warna tombol
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Ukuran tombol
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk membangun kolom profil
  Widget _buildProfileField(String value) {
    return Container(
      padding: EdgeInsets.all(15), // Menambah padding untuk kolom
      width: double.infinity, // Memperpanjang kolom agar memenuhi lebar
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        value,
        style: TextStyle(fontSize: 18, color: Colors.grey[700]), // Ukuran font diperbesar
      ),
    );
  }
}