import 'package:flutter/material.dart';
import 'package:ogrenci_app/repository/ogretmenler_repository.dart';

class OgretmenlerSayfasi extends StatefulWidget {
  final OgretmenlerRepository ogretmenlerRepository;
  OgretmenlerSayfasi(this.ogretmenlerRepository);

  @override
  State<OgretmenlerSayfasi> createState() => _OgretmenlerSayfasiState();
}

class _OgretmenlerSayfasiState extends State<OgretmenlerSayfasi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Öğretmenler'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            PhysicalModel(
              color: Colors.white,
              elevation: 10.0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 32.0, horizontal: 32.0),
                  child: Text('10 Öğretmen'),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    title: Text('Ayşe Hanım'),
                    leading: Text('👧🏻👦',style: TextStyle(fontSize: 22),),
                  ),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 25),
            ),
          ],
        ),
      ),
    );
  }
}
