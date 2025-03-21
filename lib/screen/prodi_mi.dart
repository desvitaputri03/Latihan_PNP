import 'package:flutter/material.dart';

class ManajemenInformatikaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manajemen Informatika',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Colors.orange,
              child: Text(
                'Program Studi Manajemen Informatika',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Deskripsi dan Profil',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Program Studi Manajemen Informatika (Kampus Kab. Pelalawan) merupakan salah satu Program Studi Diluar Kampus Utama (PSDKU) Politeknik Negeri Padang yang memiliki sejarah dan kekerabatan erat dengan berdirinya Akademi Komunitas di Derah Pelalawan. Berangkat dari SK Pendirian Akademi Komunitas Nomor : 179/P/2013 Tanggal 26 September 2013, Program Studi Diluar Domisili (PDD) Kabupaten Pelalawan merupakan Program Studi D2 Elektro Industri dan D2 Manajemen Informatika.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              ),
              child: Text(
                'Back',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
