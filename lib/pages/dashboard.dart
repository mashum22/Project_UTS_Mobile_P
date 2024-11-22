import 'package:flutter/material.dart';
import 'profil.dart';
import 'transaksi.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green[100]!, // Warna hijau muda
              Colors.blue[200]!, // Warna biru lebih cerah
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0), // Meningkatkan padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: SizedBox.shrink(),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35, // Membesarkan avatar
                      backgroundImage: AssetImage('assets/image/mashum.jpg'),
                    ),
                    SizedBox(width: 15), // Meningkatkan jarak
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat datang',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Meningkatkan ukuran font
                        ),
                        Text(
                          'Muhammad Ma`shum',
                          style: TextStyle(fontSize: 18), // Meningkatkan ukuran font
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25), // Meningkatkan jarak
              // Kolom Saldo
              Container(
                padding: EdgeInsets.all(20), // Meningkatkan padding
                decoration: BoxDecoration(
                  color: Colors.white, // Warna latar belakang kontainer saldo
                  borderRadius: BorderRadius.circular(10), // Membuat sudut lebih bulat
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.wallet, size: 60, color: Colors.blue), // Ikon dompet di pojok kiri
                    SizedBox(width: 15), // Meningkatkan jarak
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saldo',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Rp 100.000.000', // Ganti dengan saldo aktual
                            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold), // Meningkatkan ukuran font
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Nomor Rekening',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '082335110499', // Ganti dengan nomor rekening aktual
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25), // Meningkatkan jarak
              // Akses Cepat
              Text(
                'Akses Cepat',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Meningkatkan ukuran font
              ),
              SizedBox(height: 15), // Meningkatkan jarak
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Kolom Transfer
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TransaksiPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        color: Colors.grey[300],
                        padding: EdgeInsets.all(15), // Meningkatkan padding
                        child: Column(
                          children: [
                            Icon(Icons.send, size: 50, color: Colors.blue), // Membesarkan ikon
                            SizedBox(height: 5),
                            Text ('Kirim', style: TextStyle(fontSize: 18)), // Meningkatkan ukuran font
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      color: Colors.grey[300],
                      padding: EdgeInsets.all(15), // Meningkatkan padding
                      child: Column(
                        children: [
                          Icon(Icons.history, size: 50, color: Colors.blue), // Membesarkan ikon
                          SizedBox(height: 5),
                          Text('Aktivitas', style: TextStyle(fontSize: 18)), // Meningkatkan ukuran font
                        ],
                      ),
                    ),
                  ),
                  // Kolom Akun Bank
                  Expanded(
                    child: Container(
                      color: Colors.grey[300], // Warna abu-abu
                      padding: EdgeInsets.all(15), // Meningkatkan padding
                      child: Column(
                        children: [
                          Icon(Icons.account_balance, size: 50, color: Colors.blue), // Membesarkan ikon
                          SizedBox(height: 5),
                          Text('Akun Dana', style: TextStyle(fontSize: 18)), // Meningkatkan ukuran font
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25), // Meningkatkan jarak
              // Bagian Transaksi
              Text(
                'Transaksi',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Meningkatkan ukuran font
              ),
              SizedBox(height: 15), // Meningkatkan jarak
              Column(
                children: [
                  TransactionItem(name: 'Muhammad Imamudin', amount: 200000, type: 'Uang Masuk'),
                  TransactionItem(name: 'Achmad Zamroni', amount: 150000, type: 'Uang Masuk'),
                  TransactionItem(name: 'Muhammad Alfarisyi', amount: 30000, type: 'Uang Masuk'),
                  TransactionItem(name: 'Halimatus Sa`diyah', amount: 100000, type: 'Uang Masuk'),
                  TransactionItem(name: 'Asma`ul Husnah', amount: 250000, type: 'Uang Masuk'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final String name;
  final double amount;
  final String type;

  TransactionItem({required this.name, required this.amount, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15), // Meningkatkan jarak antar transaksi
      padding: EdgeInsets.all(15), // Meningkatkan padding
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10), // Membuat sudut lebih bulat
      ),
      child: Row(
        children: [
          Icon(Icons.attach_money, size: 50, color: Colors.green), // Membesarkan ikon uang masuk
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), // Meningkatkan ukuran font
                Text(type, style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          SizedBox(width: 10),
          Text('Rp ${amount.toString()}', style: TextStyle(fontSize: 18)), // Meningkatkan ukuran font
        ],
      ),
    );
  }
}