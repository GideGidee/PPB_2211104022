import 'dart:io';
import 'dart:math';

void main() {
  // Meminta input untuk panjang baris A
  stdout.write("Masukkan panjang baris (A): ");
  String? inputA = stdin.readLineSync();

  // Meminta input untuk panjang kolom B
  stdout.write("Masukkan panjang kolom (B): ");
  String? inputB = stdin.readLineSync();

  // Validasi input agar tidak null sebelum di-convert ke int
  if (inputA != null && inputB != null) {
    int A = int.parse(inputA);
    int B = int.parse(inputB);

    // Membuat matriks dan transpose-nya
    List<List<int>> matrix = createMatrix(A, B);
    print("Matriks ${A}x${B}:");
    printMatrix(matrix);

    List<List<int>> transposed = transposeMatrix(matrix);
    print("\nHasil transpose:");
    printMatrix(transposed);
  } else {
    print("Input tidak valid. Harap masukkan nilai A dan B.");
  }
}

List<List<int>> createMatrix(int A, int B) {
  final random = Random();
  return List.generate(
    A,
    (i) => List.generate(B, (j) => random.nextInt(10) + 1),
  );
}

List<List<int>> transposeMatrix(List<List<int>> matrix) {
  int A = matrix.length;
  int B = matrix[0].length;
  List<List<int>> transposed = List.generate(
    B,
    (i) => List.generate(A, (j) => matrix[j][i]),
  );
  return transposed;
}

void printMatrix(List<List<int>> matrix) {
  for (var row in matrix) {
    print(row.join(' '));
  }
}
