import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Masukkan Kata: ");
  String? input = stdin.readLineSync();
  int angka = int.parse(input!);
  int a = 1, b = angka, sc = 0, nmb = 1;
  int hc = (angka - 1) ~/ 2;
  int spc = 1;

  if (angka % 2 == 1) {
    for (int i = 0; i <= (angka - 1) ~/ 2; i++) {
      if (i == (angka - 1) ~/ 2) {
        for (int j = 1; j < (angka + 3) ~/ 2; j++) {
          stdout.write(i + 1);
          stdout.write(" ");
        }
      } else {
        for (int k = 0; k < hc; k++) {
          stdout.write("*");
        }
        stdout.write(nmb);

        if (i > 0) {
          for (int s = 0; s < spc; s += 1) {
            stdout.write(" ");
          }
          stdout.write(nmb);
        }

        //bintang bagian kanan
        for (int l = 0; l < hc; l++) {
          stdout.write("*");
        }

        if (i > 0) {
          spc = spc + 2;
        }

        nmb = nmb + 1;
        hc = hc - 1;
      }
      print("");
    }
  } else {
    for (int i = 0; i <= angka; i += 1) {
      for (int j = angka; j > i; j = j - 1) {
        stdout.write(a);
        a = a + 1;
        if (a > angka) {
          a = 1;
        }

        if (a > 9) {
          a = 1;
        }
      }

      for (int l = 0; l <= sc; l += 1) {
        if (l > 0) {
          stdout.write(" ");
        }
      }

      for (int k = angka; k > i; k -= 1) {
        if (b > 9) {
          b = angka - 9;
        }

        stdout.write(b);
        b = b - 1;
        if (b < 1 && angka <= 9) {
          b = angka;
        }

        if (b < 1 && angka > 9) {
          b = 9;
        }
      }
      print("");
      sc = sc + 2;
    }
  }
}

