import 'dart:io';

List createNumberList(){
  List<List<int>> numberList = [
    List.generate(3, (i) => (i + 1) * 5),
    List.generate(4, (i) => (i + 1) * 2),
    List.generate(5, (i) => (i + 1) * (i + 1)),
    List.generate(6, (i) => (i + 3))
  ];
  return numberList;
}

void CheckIndex(int nilai){
  List numberList = createNumberList();
  print("Isi list: ");
  for (var row in numberList){
    print(row.join(" "));
  }
  bool ditemukan = false;
  print("Bilangan yang ingin dicari: ${nilai}");
  for (int i = 0; i < numberList.length; i++){
    for (int j = 0; j < numberList[i].length; j++){
      if (numberList[i][j] == nilai){
        print("$nilai berada di: ");
        print("baris ${i+1} kolom ${j+1}");
        ditemukan = true;
      }
    }
  }
  if (ditemukan == false){
    print("Nilai $nilai tidak ditemukan di list");
  }
}

void main(){
  stdout.write("Masukkan nilai: ");
  String? input = stdin.readLineSync();
  int nilai = int.parse(input!);
  CheckIndex(nilai);
}