import 'tes.dart';

void main(){
  // int a = 1;
  // int b = 5;
  // print(a >= b ? true : false);

  // String? c;
  // print(c);

  // returnTes();

  // printTes();

  print(avgIPK([3.9, 3.88, 3.77, 4.00, 3.55]));
}

String returnTes(){
  String tes = "woi";
  return tes;
}

double avgIPK(List ipk){
  double sumIPK = 0;
  for (int i = 0; i < ipk.length; i++){
    sumIPK += ipk[i];
  };
  double avg_ipk = sumIPK / ipk.length;
  return avg_ipk;
}
double avgIPK2(List ipk) => ipk.reduce((a, b) => a + b) / ipk.length;