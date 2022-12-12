import 'package:aplikasi_ini/auth/home.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'IndLish',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Version 1.1',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            Image.asset(
              'images/logo.jpg',
              height: 200,
              width: 200,
            ),
            Text(
              '@Kelompok 4 (PTIB-21)',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.lightGreen[200],
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  )),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeAuth()));
              },
              child: const Text('Kembali ke Halaman Utama'),
            ),
          ],
        ),
      ),
    );
  }
}
