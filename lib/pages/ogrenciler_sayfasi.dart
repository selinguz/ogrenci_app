import 'package:flutter/material.dart';
import 'package:ogrenci_app/repository/ogrenciler_repository.dart';

class OgrencilerSayfasi extends StatefulWidget {
  final OgrencilerRepository ogrencilerRepository;
  OgrencilerSayfasi(this.ogrencilerRepository);

  @override
  State<OgrencilerSayfasi> createState() => _OgrencilerSayfasiState();
}

class _OgrencilerSayfasiState extends State<OgrencilerSayfasi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Öğrenciler'),
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
                  child: Text('10 Öğrenci'),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                        title: Text('Ali'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_outline_outlined),
                        ),
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
