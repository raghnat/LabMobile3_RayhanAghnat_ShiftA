import 'package:flutter/material.dart';
import 'package:tugas3praktikum2024/page/AboutPage.dart';
import 'package:tugas3praktikum2024/page/HomePage.dart';

class Sidemenu extends StatefulWidget {
  const Sidemenu({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SidemenuState createState() => _SidemenuState();
}

class _SidemenuState extends State<Sidemenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.lightBlue[50], // Background warna menu
        child: ListView(
          children: [
            // Header Drawer dengan gaya yang lebih menarik
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Menu Utama',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Navigasi Aplikasi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            // Menu Home
            ListTile(
              leading: const Icon(Icons.home, color: Colors.blue),
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                // navigasi ke halaman home
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepage()),
                );
              },
            ),
            // Menu About
            ListTile(
              leading: const Icon(Icons.info,
                  color: Colors.blue), // Ikon untuk About
              title: const Text(
                'About',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                // navigasi ke halaman about
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
