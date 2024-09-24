// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:tugas3praktikum2024/page/SideMenu.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // Background warna
      appBar: AppBar(
        title: const Text(
          'About Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue, // Warna app bar
        iconTheme: const IconThemeData(
            color: Colors.white), // Mengubah warna ikon menjadi putih
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Gambar atau ikon yang relevan
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                  'assets/about_icon.png'), // Sesuaikan dengan gambar yang diinginkan
            ),
            const SizedBox(height: 20),
            // Judul
            const Text(
              'Tentang Aplikasi Ini',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 20),
            // Deskripsi
            const Text(
              'Ini adalah halaman About dari aplikasi ini. Aplikasi ini dibuat untuk membantu pengguna melakukan berbagai tugas dengan mudah dan cepat.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 40),
            // Tombol kembali
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Kembali',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      drawer: const Sidemenu(),
    );
  }
}
