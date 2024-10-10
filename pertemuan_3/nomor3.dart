import 'dart:io';

int hitungKPK(int bil1, int bil2){
  if (bil1 > bil2){
    int tukar = bil1;
    bil1 = bil2;
    bil2 = tukar;
  }

  int hasil = 0;
  List<int> faktorBil1 = [];
  List<int> faktorBil2 = [];
  for (int i = 1; i <= bil1; i++){
    if (bil1 % i == 0){
      faktorBil1.add(i);
    }
  }
  for (int i = 1; i <= bil2; i++) {
    if (bil2 % i == 0) {
      faktorBil2.add(i);
    }
  }

  int temp = 1;
  for (int i = 0; i < faktorBil1.length; i++){
    for (int j = 0; j < faktorBil2.length; j++){
      if (faktorBil1[i] == faktorBil2[j]){
        temp = faktorBil1[i];
      }
    }
  }

  hasil = (bil1 * bil2) ~/ temp;
  return hasil;
}

void main(){
  stdout.write("Masukkan bilangan 1: ");
  String? bil1 = stdin.readLineSync();
  stdout.write("Masukkan bilangan 2: ");
  String? bil2 = stdin.readLineSync();
  int bilangan1 = int.parse(bil1!);
  int bilangan2 = int.parse(bil2!);
  int kpk = hitungKPK(bilangan1, bilangan2);
  print("KPK dari ${bilangan1} dan ${bilangan2} adalah $kpk");
}