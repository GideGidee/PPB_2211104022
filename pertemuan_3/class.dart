import 'dart:ffi';

class Animal {
  String nama;
  int umur;
  
  Animal(this.nama, this.umur);

  String suara(){
    return "oink";
  }
}

class Cat extends Animal{
  String jenisMakanan;

  Cat(String nama, int umur, this.jenisMakanan) : super(nama, umur);

  String suara(){
    return "miaw";
  }
}

class Singa extends Animal{
  String jenisMakanan;

  Singa(String nama, int umur, this.jenisMakanan) : super(nama, umur);

  String suara(){
    return "rawr";
  }
}

class Environment{
  static String API_KEY = "api.api.api";
}

mixin Facility{
  String? wifi;
  String? ac;
  String? projector;
}

class ClassRoom with Facility{
  String nama;
  String kapasistas;
  String lokasi;
  ClassRoom(this.nama, this.kapasistas, this.lokasi);
}

void main(){
  Animal babi = Animal("Fauzan", 10);
  Cat zaki = Cat("Zaki", 3, "omnivora");
  Singa luthfi = Singa("Luthfi", 20, "Karnivora");
  // print(babi.nama);
  // print(zaki.nama);
  // print("${zaki.nama} bersuara ${zaki.suara()}");
  // print("${babi.nama} bersuara ${babi.suara()}");
  // print(Environment.API_KEY);
}