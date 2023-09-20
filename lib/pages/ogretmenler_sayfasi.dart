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
                  child: Text('${widget.ogretmenlerRepository.ogretmenler.length} '
                      'Öğretmen'),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => OgretmenSatiri(
                      widget.ogretmenlerRepository.ogretmenler[index],widget
                      .ogretmenlerRepository
                  ),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: widget.ogretmenlerRepository.ogretmenler.length),
            ),
          ],
        ),
      ),
    );
  }
}


class OgretmenSatiri extends StatefulWidget {
  final Ogretmen ogretmen;
  final OgretmenlerRepository ogretmenlerRepository;


  OgretmenSatiri(this.ogretmen, this.ogretmenlerRepository);

  @override
  State<OgretmenSatiri> createState() => _OgretmenSatiriState();
}

class _OgretmenSatiriState extends State<OgretmenSatiri> {
  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(widget.ogretmen.adi + ' ' + widget.ogretmen.soyadi),
      leading: Text(
        widget.ogretmen.cinsiyet == 'Kadın' ? '👧🏻' : '👦',
        style: TextStyle(fontSize: 22,),
      ),
    );
  }
}

