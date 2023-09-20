import 'package:flutter/material.dart';
import 'package:ogrenci_app/pages/mesajlar_sayfasi.dart';
import 'package:ogrenci_app/pages/ogrenciler_sayfasi.dart';
import 'package:ogrenci_app/pages/ogretmenler_sayfasi.dart';

void main() {
  runApp(const OgrenciApp());
}

class OgrenciApp extends StatelessWidget {
  const OgrenciApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Öğrenci Uygulaması',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Öğrenci Adı'),
              decoration: BoxDecoration(color: Colors.orangeAccent),
            ),
            ListTile(
              title: Text('Öğrenciler'),
              onTap: () {
                _ogrencilereGit(context);
              },
            ),
            ListTile(
              title: Text('Öğretmenler'),
              onTap: () {
                _ogretmenlereGit(context);
              },
            ),
            ListTile(
              title: Text('Mesajlar'),
              onTap: () {
                _mesajlaraGit(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Öğrenci AnaSayfa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                _mesajlaraGit(context);
              },
              child: Text('10 Yeni Mesaj'),
            ),
            TextButton(
              onPressed: () {
                _ogrencilereGit(context);
              },
              child: Text('10 Öğrenci'),
            ),
            TextButton(
              onPressed: () {
                _ogretmenlereGit(context);
              },
              child: Text('10 Öğretmen'),
            ),
          ],
        ),
      ),
    );
  }
}

void _ogrencilereGit(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => OgrencilerSayfasi(),
    ),
  );
}

void _ogretmenlereGit(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => OgretmenlerSayfasi(),
    ),
  );
}

void _mesajlaraGit(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => MesajlarSayfasi(),
    ),
  );
}
