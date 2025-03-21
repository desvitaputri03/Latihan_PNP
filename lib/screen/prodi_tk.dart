import 'package:flutter/material.dart';

class ProdiTk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teknik Komputer', style: TextStyle(color: Colors.white)),
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
                'Program Studi Teknik Komputer',
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
                  'Program Studi D3 Teknik Komputer (PS D3 TKOM) merupakan salah satu program studi yang berada di bawah pengelolaan Jurusan Teknologi Informasi (JTI) Politeknik Negeri Padang. '
                      'Keilmuan Teknik Komputer sebelumnya merupakan bagian dari keilmuan Teknik Elektro dan telah berkembang menjadi bidang keilmuan tersendiri sesuai dengan deskripsi yang terdapat pada Computing Curricula ACM 2016. '
                      'Menurut Computing Curricula, saat ini bidang keilmuan Komputer telah berkembang menjadi bidang ilmu spesifik yang terdiri dari Ilmu Komputer/Informatika, Teknik Komputer, Sistem Informasi, Teknologi Informasi, dan Rekayasa/Teknik Perangkat Lunak. '
                      'Keilmuan Teknik Komputer memiliki irisan dengan bidang ilmu Teknik Elektro dan Ilmu Komputer/Teknik Informatika, namun memiliki fokus pada bidang Sistem Komputasi Modern, Perangkat Kontrol Komputer, dan Jaringan Perangkat Cerdas.\n\n'
                      'Secara umum, Keilmuan Teknik Komputer dipandang sebagai bidang keilmuan desain komputer. Tidak sebatas itu, Teknik Komputer juga mendorong dan memajukan kemampuan komputer dan mikroelektronik saat ini di berbagai bidang. '
                      'Teknik Komputer adalah disiplin ilmu yang mewujudkan ilmu pengetahuan dan teknologi desain, konstruksi, implementasi, dan pemeliharaan komponen perangkat lunak serta perangkat keras dari sistem komputasi modern, perangkat kontrol komputer, dan jaringan perangkat cerdas. '
                      'Teknik Komputer menekankan pada teori dan prinsip komputasi, matematika, sains, dan keteknikan untuk diterapkan pada penyelesaian masalah teknis pada perangkat komputasi, perangkat lunak, dan jaringan (Association for Computing Machinery (ACM); IEEE Computer Society, 2016).',
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