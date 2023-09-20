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
                  child: Text(
                      '${widget.ogrencilerRepository.ogrenciler.length} Öğrenci'),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => OgrenciSatiri(
                        widget.ogrencilerRepository.ogrenciler[index],widget.ogrencilerRepository
                      ),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: widget.ogrencilerRepository.ogrenciler.length),
            ),
          ],
        ),
      ),
    );
  }
}

class OgrenciSatiri extends StatefulWidget {
  final Ogrenci ogrenci;
  final OgrencilerRepository ogrencilerRepository;


  OgrenciSatiri(this.ogrenci, this.ogrencilerRepository);

  @override
  State<OgrenciSatiri> createState() => _OgrenciSatiriState();
}

class _OgrenciSatiriState extends State<OgrenciSatiri> {
  @override
  Widget build(BuildContext context) {
    bool seviyorMuyum = widget.ogrencilerRepository.seviyoruMuyum
      (widget.ogrenci);
    return ListTile(
      title: Text(widget.ogrenci.adi + widget.ogrenci.soyadi),
      trailing: IconButton(
        onPressed: () {
          setState(() {
            widget.ogrencilerRepository.sev(widget.ogrenci, !seviyorMuyum);
          });
        },
        icon: Icon(widget.ogrencilerRepository.seviyoruMuyum(widget.ogrenci) ? Icons
            .favorite : Icons.favorite_outline),
      ),
      leading: Text(
        widget.ogrenci.cinsiyet == 'Kadın' ? '👧🏻' : '👦',
        style: TextStyle(fontSize: 22),
      ),
    );
  }
}
