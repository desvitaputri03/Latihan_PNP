import 'package:flutter/material.dart';
import 'package:flutter_pnp_vita/screen/galeri_photo.dart';
import 'package:flutter_pnp_vita/screen/prodi_mi.dart';
import 'package:flutter_pnp_vita/screen/prodi_tk.dart';
import 'package:flutter_pnp_vita/screen/tentang_pnp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Politeknik Negeri Padang',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo_pnp.png', width: 150),
            SizedBox(height: 10),
            Text(
              'Selamat Datang di Politeknik Negeri Padang',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.orange,
              ),
            ),
            Text('Limau Manih, Padang, Sumbar', style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            _buildButton(context, 'Tentang Politeknik Negeri Padang', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TentangPnp(),
                ), // Menggunakan AboutPage
              );
            }),
            _buildButton(context, 'Manajemen Informatika', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ManajemenInformatikaPage(),
                ), // Menggunakan ProdiMIPage
              );
            }),
            _buildButton(context, 'Teknik Komputer', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProdiTk(),
                ), // Menggunakan ProdiTKPage
              );
            }),
            _buildButton(context, 'Galeri Photo', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageGaleri(),
                ), // Menggunakan ProdiTKPage
              );
            }),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  // Menyesuaikan fungsi _buildButton agar bisa menerima context dan onPressed
  Widget _buildButton(
      BuildContext context,
      String text,
      VoidCallback onPressed,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          minimumSize: Size(double.infinity, 50),
        ),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
