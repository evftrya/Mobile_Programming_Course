import 'dart:io';

void main() {
  var A = [
    [2, 11, 66, 77, 23],
    [12, 24, 8]
  ];
  print("Matrix AxB : ");

  TransposeMatrix(A);
}

void TransposeMatrix(List a) {
  var readA = a.length;
  int maxLong = readAllLong(a);
  int isiList = a.length;

  print("Hasil Transpose : ");
  print("A : $maxLong");
  print("B : $isiList");
  print("$maxLong X $isiList");
  print("isi matrix: ");
  var newList = [[]];
  for (var t = 0; t < readA; t++) {
    printListVertikal(a[t], maxLong);
  }

  print("\nHasil Transpose: ");
  var newListV = [];
  for (var t = 0; t < maxLong; t++) {
    var inList = [];
    for (var y = 0; y < isiList; y++) {
      try {
        inList.add(a[y][t]);
      } catch (e) {
        inList.add("0");
      }
    }
    newListV.add(inList);
    inList = [];
  }
  //here we have new Vertical List
  //now we print it
  for (var r = 0; r < newListV.length; r++) {
    printListVertikal(newListV[r], maxLong);
  }
}

int readAllLong(List a) {
  var pjg = 0;
  for (var t = 0; t < a.length; t++) {
    if (a[t].length > pjg) {
      pjg = a[t].length;
    }
  }
  return pjg;
}

int cekLong(List a, List b) {
  var aPjg = a.length;
  var bPjg = b.length;
  if (aPjg > bPjg) {
    return (aPjg);
  } else {
    return (bPjg);
  }
  return aPjg;
}

//print list horizontal
void printListHorizontal(List a) {
  for (var t = 0; t < a.length; t++) {
    printListVertikal(a[t], a[t].length);
  }
}

//print list vertikal
void printListVertikal(List a, int maxLong) {
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
