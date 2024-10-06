import 'dart:io';

void main() {
  kpk(24, 30);
}

void kpk(int a, int b) {
  itung(a,0);
  // itung(b);
}

void itung(int a) {
  int simpan = a;
  print(simpan);
  var save = [];
  var prima = [2, 3, 5, 7, 11, 13, 17, 23];
  for (var q = 0; q < prima.length; q++) {
    var temp = simpan ~/ prima[q];
    if (temp != 1) {
      save.add(prima[q]);
      simpan -= (simpan ~/ prima[q]);
      print(simpan);
    }

    // print(temp);
  }
  
}
