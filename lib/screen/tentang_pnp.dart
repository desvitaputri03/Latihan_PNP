import 'package:flutter/material.dart';

class TentangPnp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang PNP', style: TextStyle(color: Colors.white)),
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
                'Tentang Politeknik Negeri Padang',
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
                  'Politeknik Negeri Padang dibangun sebagai lembaga pendidikan vokasional yang profesional dalam pengembangan teknologi. '
                      'Kegiatan akademika (tenaga akademik dan mahasiswa) dalam melaksanakan kegiatannya sehari-hari. '
                      'Kurikulum pendidikan telah disusun berbasis kompetensi dengan kelompok mata kuliah sebagai berikut:\n'
                      '– Mata Kuliah Pengembangan Kepribadian (MPK)\n'
                      '– Mata Kuliah Keilmuan dan Keterampilan (MKK)\n'
                      '– Mata Kuliah Berkarya (MKB)\n'
                      '– Mata Kuliah Berkehidupan Bermasyarakat (MBB)',
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