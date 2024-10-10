void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [
    {
      "nama": "John Doe",
      "ipk": 3.88,
      "isMarried": false,
    },
    {
      "nama": "Andi Doe",
      "ipk": 3.78,
      "isMarried": true,
    },
    {
      "nama": "Budi Doe",
      "ipk": 3.68,
      "isMarried": true,
    }
  ];
  double total_ipk = 0;
  double totalIsMarried = 0;
  for (int i = 0; i < daftarMahasiswa.length; i++){
    total_ipk += daftarMahasiswa[i]["ipk"];
    if (daftarMahasiswa[i]["isMarried"] == true){
      totalIsMarried += 1;
    }
  };
  double avg = total_ipk / daftarMahasiswa.length;
  print("Rata-rata IPK: $avg");
  print("Jumlah mahasiswa yang sudah menikah: $totalIsMarried");
}
