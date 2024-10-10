import 'dart:math';
import 'dart:io';

List createMatrix(int A, int B) {
  final random = Random();
  List<List<int>> matrix = List.generate(A, (i) => List.generate(B, (j) => random.nextInt(10) + 1));
  print("Matrix ${A}x${B}: ");
  for (var row in matrix){
    print(row.join(" "));
  }
  return matrix;
}

void transposeMatrix(int A, int B, List matrix){
  List<List<int>> transpose = List.generate(B, (i) => List.generate(A, (j) => matrix[j][i]));
  print("Transpose Matrix: ");
  for (var row in transpose){
    print(row.join(" "));
  }
}

void main() {
  stdout.write("Masukkan panjang baris (A): ");
  String? inputA = stdin.readLineSync();
  stdout.write("Masukkan panjang kolom (B): ");
  String? inputB = stdin.readLineSync();
  int A = int.parse(inputA!);
  int B = int.parse(inputB!);
  List matrix = createMatrix(A, B);
  transposeMatrix(A, B, matrix);
}