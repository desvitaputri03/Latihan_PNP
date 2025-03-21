import 'package:flutter/material.dart';

class PageGaleri extends StatelessWidget {
  const PageGaleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Gambar Galeri'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo_pnp.png', width: 200),
            SizedBox(height: 20),
            Image.asset('assets/pnp.jpg', width: 200),
          ],
        ),
      ),
    );
  }
}
