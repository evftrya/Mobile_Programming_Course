import 'dart:io';

void main() {
  CariNomor(10);
}

void CariNomor(int a) {
  // a = 10;
  var theList = [];
  //isi1
  theList.add(kelipatan(5, 3));
  theList.add(kelipatan(2, 4));
  theList.add(Kuadrat(5));
  theList.add(BilanganAsli(6, 3));
  // print(theList[0][0]);
  print(theList);
  // for (var r = 0; r < theList.length; r++) {
  //   printListVertikal(theList[r]);
  // }

  for (var q = 0; q < theList.length; q++) {
    for (var w = 0; w < theList[q].length; w++) {
      if (a == theList[q][w]) {
        var baris = q + 1;
        var kolom = w + 1;
        print(
            "\nBilangan yang dicari: $a \n$a berada di: \nbaris $baris kolom $kolom");
      }
    }
  }
}

void printListVertikal(List a) {
  // print(a[0][2]);
  // print(a[0]);
  int maxLong = readAllLong(a);
  // print(maxLong);
  print("");
  // print(a.length);
  for (var t = 0; t < maxLong; t++) {
    try {
      var q = a[t];
      stdout.write("\t $q");
    } catch (e) {
      stdout.write("\t 0");
    }
  }
}

int readAllLong(List a) {
  var pjg = 0;
  for (var t = 0; t < a.length; t++) {
    // print(a[t]);
    if (a[t].length > pjg) {
      pjg = a[t].length;
    }
  }
  return pjg;
}

List kelipatan(int a, int howmuch) {
  var AddList = [];
  for (var i = 1; i <= howmuch; i++) {
    AddList.add(a * i);
  }
  return (AddList);
}

List Kuadrat(int howmuch) {
  var AddList = [];
  for (var i = 1; i <= howmuch; i++) {
    AddList.add(i * i);
  }
  return (AddList);
}

List BilanganAsli(int isi, int start) {
  var AddList = [];
  var save = start - 1;
  for (var i = 1; i <= 6; i++) {
    save += 1;
    AddList.add(save);
  }

  return AddList;
}
