import 'dart:async';
//Dimas Teguh Ramadhani
//21102145
void main() async {
  print('Getting your product...');
  try {
    var order = await getProduct();
    print('You order: $order');
  } catch (error) {
    print('Sorry. $error');
  } finally {
    print('Thank you');
  }

  contohClosure();
  contohClosure();
  
  var contohClosure = penjumlahan(2);
  contohClosure();
  contohClosure();

  Function penjumlahan(base) {
    var a = 1;
    return () => print("Nilainya adalah ${base + a++}");
  }

  contohHigherOrderFunction('Hello', sum);

  Function sum = (int num1, int num2) => num1 + num2;
  contohHigherOrderFunction('Hello', (num1, num2) => num1 + num2);

  void contohHigherOrderFunction(String message, Function myFunction) {
    print(message);
    print(myFunction(3, 4));
  }

  print(Pelangi.values);
  print(Pelangi.kuning);
  print(Pelangi.biru.index);

  var kucing = Hewan("Maman", 2, 5.3);
  kucing.makan();
  kucing.tidur();

  var kucing2 = Meong("Rawr", 2, 5.3, "Oren");
  kucing2.jalan();

  var angkaSet = {1, 4, 6}; 
  Set<int> bilanganSet = new Set.from([1, 4, 6, 4, 1]);
  print(bilanganSet);

  var kota = {
    'Semarang': 'Jawa Tengah',
    'Bandung': 'Jawa Barat',
    'Malang': 'Jawa Timur'
  };

  var buah1 = ['Mangga', 'Apel', 'Jeruk', 'Manggis']; 
  var hewan1 = ['Ayam', 'Kelinci', 'Kucing']; 
  var allFavorites1 = [...buah1,...hewan1]; 
  print(allFavorites1);

  List<String> month =['Januari', 'Februari', 'Maret'];
  print(month);

  for (int i = 1; i <= 100; i++ ) { 
    print(i); 
  }

  var grade = "A";
  switch (grade) {
    case "A": // do something
      print("GGWP");
      break;
    case "B":
      print("GG");
      break;
  }

  var angka = 5;
  if (angka > 0) { 
    print('bilangan positif'); 
  } else if (angka < 0) { 
    print('bilangan negatif'); 
  }

  print('Hello, World!');

  getProduct().then((value) {
    print('You product: $value');
  })
  .catchError((error) {
    print('Sorry. $error');
  });
}

Future<String> getProduct() {
  return Future.delayed(Duration(seconds: 3), () {
    var isProductAvailable = false;
    if (isProductAvailable) {
      return 'Matcha Latte';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}

enum Pelangi {
  merah, jingga, kuning, hijau, biru, nila, ungu
}

class Meong extends Hewan {
  String warnaBulu; 
  
  Meong(String nama, int umur, double berat, String warnaBulu);
  super(nama, umur, berat) {
    this.warnaBulu = warnaBulu;
  }
  
  void jalan() { 
    print('$nama berjalan'); 
  }
}

class Hewan { 
  String nama; 
  int umur; 
  double berat; 
  
  Hewan(this.nama, this.umur, this.berat);
  
  void makan() { 
    print('$nama makan.'); 
    berat = berat + 0.2; 
  } 
  
  void tidur() { 
    print('$nama sedang tidur'); 
  } 
}
