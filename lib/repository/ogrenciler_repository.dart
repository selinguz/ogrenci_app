class OgrencilerRepository {

  List<Ogrenci> ogrenciler = [
    Ogrenci('Ali', 'Demir', 18, 'Erkek'),
    Ogrenci('Ayşe', 'Çelik', 18, 'Kadın')
  ];

  final Set<Ogrenci> sevdiklerim = {};

  void sev(Ogrenci ogrenci, bool seviyorMuyum) {
    if(seviyorMuyum){
      sevdiklerim.add(ogrenci);
    } else {
      sevdiklerim.remove(ogrenci);
    }
  }

  bool seviyoruMuyum(Ogrenci ogrenci) {
    return sevdiklerim.contains(ogrenci);
  }



}

class Ogrenci {

  String adi;
  String soyadi;
  int age;
  String cinsiyet;

  Ogrenci(this.adi, this.soyadi, this.age, this.cinsiyet);

}

