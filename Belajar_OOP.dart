// OOP
// OOP adalah paradigma yang berfokus pada konsep "objek" yang berisi data (properti/variabel) dan kode (metode/fungsi).
// 1. Class
// Class adalah blueprint atau cetak biru untuk membuat objek. Class mendefinisikan properti dan metode yang dimiliki oleh objek tersebut.
// -Properti (Fields/Variables): Data yang dimiliki objek (e.g., nama, warna, kecepatan).
// -Metode (Methods/Functions): Tindakan yang dapat dilakukan objek (e.g., berjalan, berlari, berhenti).
// Contoh Pertama pembuatan class Mobil:
// class Mobil {
//   // Properti (data)
//   String warna = '';
//   int kecepatan = 0;

//   // Metode (perilaku) pertama
//   void nyalakanMesin() {
//     print('Mesin mobil $warna dinyalakan.');
//   }

//   void gas(int akselerasi) {
//     kecepatan += akselerasi;
//     print('Kecepatan sekarang: $kecepatan km/jam');
//   }
// }

// 2. Object
// Object adalah instance dari class. Ketika sebuah class diinstansiasi, objek dibuat berdasarkan blueprint yang telah didefinisikan dalam class tersebut.
// Object adalah hasil nyata (instansiasi) dari sebuah Class. Objek adalah entitas di memori yang memiliki nilai spesifik untuk properti yang didefinisikan oleh Class-nya.
// Contoh lanjutan dari contoh pertama:
// void main() {
//   // Membuat Objek (instansiasi Class Mobil)
//   var mobilPertama = Mobil();
//   mobilPertama.warna = 'Merah'; // Memberi nilai pada properti
//   mobilPertama.kecepatan = 0;

//   var mobilKedua = Mobil();
//   mobilKedua.warna = 'Biru';
//   mobilKedua.kecepatan = 10;

//   // Memanggil Metode
//   mobilPertama.nyalakanMesin(); // Output: Mesin mobil Merah dinyalakan.
//   mobilPertama.gas(50); // Output: Kecepatan sekarang: 50 km/jam
//   mobilKedua.nyalakanMesin(); // Output: Mesin mobil Biru dinyalakan.
//   mobilKedua.gas(60); // Output: Kecepatan sekarang: 70 km/jam
// }

// 3. Constructor (Konstruktor)
// Konstruktor adalah metode khusus dalam sebuah class yang dipanggil saat objek dibuat. Konstruktor biasanya digunakan untuk menginisialisasi properti objek.
// Contoh penggunaan konstruktor pada class Mobil:
// class MobilDenganKonstruktor {
//   String warna;
//   int kecepatan;

//   // Konstruktor
//   MobilDenganKonstruktor(this.warna, this.kecepatan);

//   void nyalakanMesin() {
//     print('Mesin mobil $warna dinyalakan.');
//   }

//   void gas(int akselerasi) {
//     kecepatan += akselerasi;
//     print('Kecepatan sekarang: $kecepatan km/jam');
//   }
// }

// A. Default Constructor (Konstruktor Bawaan)
// -Jika Anda tidak mendeklarasikan konstruktor, Dart menyediakan konstruktor tanpa argumen secara otomatis.
// B. Parameterized Constructor (Konstruktor Berparameter)
// -Digunakan untuk memaksa objek dibuat dengan nilai awal tertentu.
//  B1). Constructor Pendek (Shorthand Constructor)
//  -Digunakan untuk inisialisasi properti dengan nilai yang diberikan saat instansiasi.
//  Contoh Penggunaan Constructor Pendek (Shorthand Constructor):
// class Hewan {
//   String nama;
//   int kaki;
//   // Konstruktor Pendek (Shorthand Constructor) | Konstruktor Shorthand: Langsung menginisialisasi properti
//   // Ini adalah cara ringkas untuk menginisialisasi properti.
//   Hewan(this.nama, this.kaki); 
//   void info() {
//     print('$nama memiliki $kaki kaki.');
//   }
// }
// // Penggunaan
// void main() {
//   var kucing = Hewan('Kucing', 4);
//   kucing.info(); // Output: Kucing memiliki 4 kaki.
//   var burung = Hewan('Burung', 2);
//   burung.info(); // Output: Burung memiliki 2 kaki.
// }

//  B2). Named Constructor (Konstruktor Bernama)
//  -Memungkinkan Anda memiliki lebih dari satu konstruktor dengan nama yang berbeda. Berguna untuk membuat objek dengan cara yang berbeda.
//  Contoh Penggunaan Named Constructor (Konstruktor Bernama):
// class Jarak {
//   double meter;

//   // Konstruktor Utama
//   Jarak(this.meter);

//   // Konstruktor Bernama untuk membuat objek dari Kilometer
//   Jarak.dariKilometer(double km) : meter = km * 1000;
// }

// // Penggunaan:
// var jarak1 = Jarak(500.0); // 500 meter
// var jarak2 = Jarak.dariKilometer(1.5); // 1500 meter

// B3). Const Constructor (Konstan)
// -Digunakan untuk membuat objek konstan (immutable) yang tidak dapat diubah setelah dibuat.
// -Objek yang dibuat dengan const constructor harus memiliki semua properti yang bersifat final (
// -Pada dart new keyword tidak wajib digunakan untuk membuat objek baru dari sebuah class. Anda dapat langsung memanggil konstruktor class tanpa menggunakan new.
// -Satu-satunya keyword yang sering digunakan untuk pembuatan objek yang memiliki peran serupa dengan new adalah const.

// -Membuat objek konstan (menggunakan keyword const) memiliki maksud utama untuk
//  memastikan objek tersebut tidak akan berubah selama program berjalan dan untuk mengoptimalkan memori dengan menggunakan objek yang sama berulang kali.

// Syarat penggunaan const:
// 1. Konstruktor Harus Konstan
// -Semua properti dalam class harus dideklarasikan sebagai final/immutable (tidak dapat diubah).
// -Class harus memiliki konstruktor 'const'
// Contoh penggunaan const untuk membuat objek immutable (tidak dapat diubah):
// class Point {
//   final int x; // Properti juga harus 'final' (immutable)
//   final int y;

//   const Point(this.x, this.y); // Konstrutor konstan
// }

// 2. Semua Argumen Harus Konstan
// void main() {
//   const pointA = Point(2, 3); // Objek konstan
//   const pointB = Point(2, 3); // Objek konstan lainnya dengan nilai yang sama
//   print(identical(pointA, pointB),
//   ); // Output: true, karena keduanya merujuk ke objek yang sama di memori
// }
// -Jika Anda mencoba mengubah properti dari objek yang dibuat dengan const, Anda akan mendapatkan kesalahan kompilasi karena objek tersebut bersifat immutable.
// -Penggunaan const sangat berguna dalam konteks di mana Anda memiliki objek yang tidak perlu diubah, seperti titik koordinat, warna, atau konfigurasi tetap lainnya. Ini membantu menghemat memori dan meningkatkan kinerja aplikasi Anda.
// Contoh penggunaan const dengan class warna:
// class Warna {
//   final int merah;
//   final int hijau;
//   final int biru;
//   const Warna(this.merah, this.hijau, this.biru);
// }
// void main() {
//   const warnaMerah = Warna(255, 0, 0);
//   const warnaBiru = Warna(0, 0, 255);
//   print(
//     "Warna Merah - R:${warnaMerah.merah}, G:${warnaMerah.hijau}, B:${warnaMerah.biru}",
//   );
//   print(
//     "Warna Biru - R:${warnaBiru.merah}, G:${warnaBiru.hijau}, B:${warnaBiru.biru}",
//   );
// }

// Contoh penggunaan const untuk optimasi memori untuk classnya diambil dari class point di atas di baris ke-56:
// void main() {
//   // Objek Konstan (Menggunakan 'const')
//   const p1 = Point(10, 20);
//   const p2 = Point(10, 20); // Nilainya sama dengan p1

//   // Objek Biasa (Menggunakan 'new' atau tanpa keyword)
//   final p3 = Point(10, 20);
//   final p4 = Point(10, 20); // Nilainya sama dengan p3

//   print("Apakah p1 dan p2 objek yang sama (menggunakan const)? ${p1 == p2}");
//   // Output: true
//   // Maksud: Dart hanya membuat SATU objek (canonicalization).

//   print("Apakah p3 dan p4 objek yang sama (tanpa const)? ${p3 == p4}");
//   // Output: false
//   // Maksud: Dart membuat DUA objek yang berbeda di memori.
// }




// Ringkasan Belajar OOP Dart part 1:
// 1. Class
// 2. Object
// 3. Constructor (Konstruktor)
//    A. Default Constructor (Konstruktor Bawaan)
//    B. Parameterized Constructor (Konstruktor Berparameter)
//       B1). Constructor Pendek (Shorthand Constructor)
//       B2). Named Constructor (Konstruktor Bernama)
//       B3). Const Constructor (Konstan)