class OgretmenlerRepository {

  List<Ogretmen> ogretmenler = [
    Ogretmen('Fevzi', 'Yaman', 48, 'Erkek'),
    Ogretmen('Selma', 'Güner', 52, 'Kadın')
  ];

}

class Ogretmen {

  String adi;
  String soyadi;
  int age;
  String cinsiyet;

  Ogretmen(this.adi, this.soyadi, this.age, this.cinsiyet);

}

