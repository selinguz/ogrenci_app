class OgrencilerRepository {

  List<Ogrenci> ogrenciler = [
    Ogrenci('Ali', 'Demir', 18, 'Erkek'),
    Ogrenci('Ayşe', 'Çelik', 18, 'Kadın')
  ];

}

class Ogrenci {

  String adi;
  String soyadi;
  int age;
  String cinsiyet;

  Ogrenci(this.adi, this.soyadi, this.age, this.cinsiyet);

}

