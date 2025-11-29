// Empat Pilar Utama OOP
// Empat konsep ini adalah inti dari OOP:
// 1. Enkapsulasi (Encapsulation)
// Enkapsulasi adalah konsep menyembunyikan detail implementasi(Data internal) dari pengguna dan hanya mengekspos antarmuka yang diperlukan.
// Ini membantu melindungi data dan memastikan bahwa objek hanya dapat diakses melalui metode yang telah ditentukan.
// -Penerapan di Dart: Menggunakan underscore (_) sebelum nama properti atau metode untuk membuatnya private (hanya dapat diakses di dalam file (library) yang sama).
// Contoh enkapsulasi pada class Mobil:
// class Mobil {
//   // Properti private
//   String _warna;
//   int _kecepatan;

//   // Konstruktor
//   Mobil(this._warna, this._kecepatan);

//   // Metode public untuk mengakses properti private
//   String get warna => _warna;
//   int get kecepatan => _kecepatan;

//   void nyalakanMesin() {
//     print('Mesin mobil $_warna dinyalakan.');
//   }

//   void gas(int akselerasi) {
//     _kecepatan += akselerasi;
//     print('Kecepatan sekarang: $_kecepatan km/jam');
//   }
// }

// Getter dan Setter
// -Getter dan Setter adalah metode khusus yang digunakan untuk mengakses dan memodifikasi properti private dari luar class.
// -Getter digunakan untuk mendapatkan nilai properti, sedangkan Setter digunakan untuk mengatur nilai properti.
// Contoh penggunaan Getter dan Setter pada class Mobil:
// class MobilDenganGetterSetter {
//   // Properti private
//   String _warna;
//   int _kecepatan;

//   // Konstruktor
//   MobilDenganGetterSetter(this._warna, this._kecepatan);

//   // Getter untuk properti warna
//   String get warna => _warna;

//   // Setter untuk properti warna
//   set warna(String warnaBaru) {
//     _warna = warnaBaru;
//   }

//   // Getter untuk properti kecepatan
//   int get kecepatan => _kecepatan;

//   // Setter untuk properti kecepatan
//   set kecepatan(int kecepatanBaru) {
//     if (kecepatanBaru >= 0) {
//       _kecepatan = kecepatanBaru;
//     } else {
//       print('Kecepatan tidak boleh negatif.');
//     }
//   }

//   void nyalakanMesin() {
//     print('Mesin mobil $_warna dinyalakan.');
//   }

//   void gas(int akselerasi) {
//     _kecepatan += akselerasi;
//     print('Kecepatan sekarang: $_kecepatan km/jam');
//   }
// }

// // Contoh penggunaan class dengan enkapsulasi, getter, dan setter:
// void main() {
//   var mobil = MobilDenganGetterSetter('Merah', 0);

//   // Menggunakan Getter(untuk mendapatkan nilai)
//   print('Warna mobil: ${mobil.warna}'); // Output: Warna mobil: Merah
//   print(
//     'Kecepatan mobil: ${mobil.kecepatan} km/jam',
//   ); // Output: Kecepatan mobil: 0 km/jam

//   // Menggunakan Setter(untuk memodifikasi nilai secara terkontrol)
//   mobil.warna = 'Biru';
//   mobil.kecepatan = 50;

//   print(
//     'Warna mobil setelah diubah: ${mobil.warna}',
//   ); // Output: Warna mobil setelah diubah: Biru
//   print(
//     'Kecepatan mobil setelah diubah: ${mobil.kecepatan} km/jam',
//   ); // Output: Kecepatan mobil setelah diubah: 50 km/jam

//   // Memanggil metode
//   mobil.nyalakanMesin(); // Output: Mesin mobil Biru dinyalakan.
//   mobil.gas(30); // Output: Kecepatan sekarang: 80 km/jam
// }

// 2. Inheritance (Pewarisan)
// Inheritance adalah konsep di mana sebuah class dapat mewarisi properti dan metode dari class lain.
// Class yang mewarisi disebut subclass/child (kelas turunan), sedangkan class yang diwarisi disebut superclass/parent (kelas induk).
// -Penerapan di Dart: Menggunakan kata kunci extends untuk membuat subclass dari superclass.
// Contoh inheritance pada class Mobil dan subclass MobilSport:
// class Mobil {
//   String warna;
//   int kecepatan;

//   Mobil(this.warna, this.kecepatan);

//   void nyalakanMesin() {
//     print('Mesin mobil $warna dinyalakan.');
//   }

//   void gas(int akselerasi) {
//     kecepatan += akselerasi;
//     print('Kecepatan sekarang: $kecepatan km/jam');
//   }
// }
// class MobilSport extends Mobil {
//   int turboBoost;

//   MobilSport(String warna, int kecepatan, this.turboBoost)
//       : super(warna, kecepatan);

//   void aktifkanTurbo() {
//     kecepatan += turboBoost;
//     print('Turbo diaktifkan! Kecepatan sekarang: $kecepatan km/jam');
//   }
// }
// // Contoh penggunaan inheritance:
// void main() {
//   var mobilSport = MobilSport('Merah', 0, 50);

//   mobilSport.nyalakanMesin(); // Output: Mesin mobil Merah dinyalakan.
//   mobilSport.gas(100); // Output: Kecepatan sekarang: 100 km/jam
//   mobilSport.aktifkanTurbo(); // Output: Turbo diaktifkan! Kecepatan sekarang: 150 km/jam
// }

// -Tidak semua property dan method class induk akan diturunkan. Property dan method dengan hak akses private tidak akan diturunkan kepada class anak.
//  Hanya property dan method dengan hak akses protected dan public saja yang bisa diakses dari class anak.

// 🛠️ Hak Akses di Dart: Private vs. Public
// Dart tidak memiliki keyword protected dan hanya memiliki dua tingkat hak akses:
// -Public (Publik): Properti atau metode yang namanya TIDAK diawali underscore (_). Ini adalah default.
// -Private (Private): Properti atau metode yang namanya diawali underscore (_).
// Hak akses di Dart bersifat Library-Level, bukan Class-Level.
// -Public: Dapat diakses dari mana saja (di dalam dan di luar library/file).
// -Private (_): Hanya dapat diakses di dalam file (library) yang sama di mana ia dideklarasikan.
// Contohnya pada kode berikut:

//  Misalkan ini adalah File dengan nama (induk.dart)
// class Kendaraan {
//   // 1. Properti PUBLIC (diwariskan & bisa diakses)
//   String jenis = 'Kendaraan Umum';

//   // 2. Properti PRIVATE (diwariskan, tapi TIDAK bisa diakses langsung di file lain)
//   String _nomorRangka = 'X12345';

//   // 3. Metode PUBLIC (diwariskan & bisa diakses)
//   void infoPublic() {
//     print('Ini adalah $jenis.');

//     // Metode Induk BISA mengakses properti private-nya sendiri
//     print('Nomor Rangka (dari Induk): $_nomorRangka');
//   }

//   // 4. Metode PRIVATE (diwariskan, tapi TIDAK bisa diakses langsung di file lain)
//   void _cekRangka() {
//     print('Rangka terverifikasi.'); // Metode ini akan unused_element atau deklarasi private (pribadi) yang tidak pernah dipanggil, digunakan, atau dirujuk di dalam library (file) tempat deklarasi tersebut berada.
//   }
// }

// Misalkan ini adalah File lain di tempat lain dengan nama (anak.dart)
// import 'induk.dart'; // Impor parent class dari file induk.dart

// class Mobil extends Kendaraan {
//   String merk;

//   Mobil(this.merk);

//   void tampilkanInfo() {
//     print('\n--- Informasi Mobil ---');

//     // 1. Akses Properti Public (BERHASIL)
//     print('Jenis (Public): $jenis');

//     // 2. Akses Metode Public (BERHASIL)
//     infoPublic();

//     // 3. Akses Properti Private (AKAN GAGAL jika berada di file berbeda)
//     // print('Nomor Rangka (Private): $_nomorRangka');
//     // ^ Kompiler akan menampilkan error: The getter '_nomorRangka' isn't defined.

//     // 4. Akses Metode Private (AKAN GAGAL jika berada di file berbeda)
//     _cekRangka();
//     // ^ Kompiler akan menampilkan error: The method '_cekRangka' isn't defined.

//     // CATATAN: Meskipun Child Class TIDAK bisa mengaksesnya,
//     // properti/metode private tetap ADA di objek Mobil
//     // dan bisa dipanggil oleh kode di Parent Class (e.g., infoPublic())
//   }
// }

// void main() {
//   var mobilSaya = Mobil('Toyota');
//   mobilSaya.tampilkanInfo();

//   // Memanggil metode public yang diwarisi
//   mobilSaya.infoPublic();
// }

// 3. Polymorphism (Polimorfisme)
// Artinya "banyak bentuk". Kemampuan objek untuk mengambil banyak bentuk melalui overriding metode dari Parent Class.
// -Polimorfisme adalah konsep di mana objek dari class yang berbeda dapat diakses melalui antarmuka yang sama.
// -Polimorfisme memungkinkan metode untuk berperilaku berbeda berdasarkan objek yang memanggilnya.
// -Penerapan di Dart: Menggunakan method overriding untuk mengubah perilaku metode yang diwarisi dari superclass(kelas induk/parent). untuk memberikan implementasi yang spesifik.
// Contoh polymorphism pada class Mobil dan subclass MobilListrik:
// class Mobil {
//   String warna;
//   int kecepatan;

//   Mobil(this.warna, this.kecepatan);

//   void nyalakanMesin() {
//     print('Mesin mobil $warna dinyalakan.');
//   }

//   void gas(int akselerasi) {
//     kecepatan += akselerasi;
//     print('Kecepatan sekarang: $kecepatan km/jam');
//   }
// }
// class MobilListrik extends Mobil {
//   int kapasitasBaterai;

//   MobilListrik(String warna, int kecepatan, this.kapasitasBaterai)
//       : super(warna, kecepatan);

//   // Overriding metode nyalakanMesin
//   @override
//   void nyalakanMesin() {
//     print('Mobil listrik $warna siap digunakan. Baterai: $kapasitasBaterai kWh');
//   }
// }
// // Contoh penggunaan polymorphism:
// void main() {
//   Mobil mobilBiasa = Mobil('Merah', 0);
//   Mobil mobilListrik = MobilListrik('Biru', 0, 75);

//   mobilBiasa.nyalakanMesin(); // Output: Mesin mobil Merah dinyalakan.
//   mobilListrik.nyalakanMesin(); // Output: Mobil listrik Biru siap digunakan. Baterai: 75 kWh

//   mobilBiasa.gas(50); // Output: Kecepatan sekarang: 50 km/jam
//   mobilListrik.gas(60); // Output: Kecepatan sekarang: 60 km/jam
// }

// Kegunaan dan Manfaat
// Polimorfisme membuat kode menjadi:
// -Fleksibel: Kode dapat bekerja dengan berbagai jenis objek asalkan objek-objek tersebut berbagi Parent Class atau Interface yang sama.
// -Mudah Dipelihara: Jika Anda ingin menambahkan jenis mobil baru (misalnya MobilHidrogen), Anda cukup mewarisi dari Mobil dan meng-override metode yang relevan tanpa harus mengubah kode yang sudah ada.

// walaupun dalam contoh diatas kita menghapus @override pada metode nyalakanMesin di class MobilListrik, metode tersebut tetap dianggap sebagai overriding karena memiliki nama, parameter, dan tipe pengembalian yang sama dengan metode di class induk Mobil.
// keberadaan @override sangat penting dan memiliki kegunaan vital dalam aspek keamanan kode (Code Safety) dan keterbacaan (Readability), meskipun secara fungsional tidak memengaruhi runtime (saat program berjalan).
// -Keamanan Kode: Dengan menambahkan anotasi @override, Anda memberi tahu kompiler bahwa Anda bermaksud untuk meng-override metode dari superclass. Jika terjadi kesalahan penulisan nama metode atau ketidaksesuaian parameter, kompiler akan memberikan peringatan atau kesalahan. Ini membantu mencegah bug yang sulit dideteksi.
// -Keterbacaan: Anotasi @override membuat kode lebih mudah dipahami oleh pengembang lain (atau diri Anda di masa depan). Ini menunjukkan dengan jelas bahwa metode tersebut adalah implementasi khusus dari metode yang ada di superclass, sehingga memudahkan pemahaman struktur kode dan hubungan antar kelas.
// -Anotasi @override adalah petunjuk (hint) untuk Dart Analyzer (alat yang memeriksa kode Anda) dan programmer lain tentang maksud Anda.

// 4. Abstraction (Abstraksi)
// Abstraksi adalah konsep menyembunyikan detail kompleks dan hanya menampilkan fitur penting dari suatu objek.
// Abstraksi membantu mengurangi kompleksitas dan meningkatkan efisiensi dengan hanya menampilkan informasi yang relevan.
// Menampilkan informasi yang penting bagi pengguna dan menyembunyikan latar belakang yang kompleks. Dilakukan melalui:

// -Abstract Class: Class yang tidak bisa di-instansiasi (dibuat objek) secara langsung. Digunakan sebagai dasar untuk Class lain. Dideklarasikan dengan kata kunci abstract.
//  Abstract Class adalah Class yang tidak dapat di-instansiasi (dibuat objeknya) secara langsung. Fungsinya hanya sebagai kerangka dasar atau kontrak untuk Child Class yang akan mewarisinya.

// -Interface: Di Dart, Class apa pun dapat berfungsi sebagai Interface. Interface menentukan kontrak (sekumpulan metode) yang harus dipenuhi oleh Class yang mengimplementasikannya keyword (implements).
//  Di Dart, sebuah Class biasa dapat berfungsi sebagai interface. Ketika sebuah Class menggunakan keyword implements pada Class lain, ia terikat kontrak untuk mengimplementasikan ulang semua properti dan metode dari Class yang di-implement-nya.

// Tujuannya adalah untuk mengurangi kerumitan, meningkatkan efisiensi, dan mempermudah pemeliharaan sistem.

// Contoh penggunaan Abstract Class di Dart:
// Abstract Class: Tidak bisa dibuat objeknya (e.g., HewanHanya = Hewan(); akan error)
// abstract class Hewan {
//   // Properti yang sudah diimplementasikan
//   String nama = 'Hewan';

//   // Metode yang sudah diimplementasikan
//   void bernapas() {
//     print('$nama sedang bernapas.');
//   }

//   // Metode Abstrak (Tidak memiliki tubuh, wajib diimplementasi oleh Child Class)
//   void bersuara();
// }

// class Kucing extends Hewan {
//   // Wajib meng-override dan mengimplementasikan metode abstrak bersuara()
//   @override
//   void bersuara() {
//     nama = 'Kucing'; // Mengubah properti yang diwarisi
//     print('$nama meong-meong.');
//   }
// }

// void main() {
//   var kucing = Kucing();
//   kucing.bernapas(); // Menggunakan metode yang diimplementasi oleh Parent Class
//   kucing.bersuara(); // Menggunakan implementasi spesifik Child Class
// }

// Contoh penggunaan Interface di Dart:
// Class ini bertindak sebagai Interface/Kontrak
// class PerilakuTerbang {
//   // Harus mengimplementasikan kedua metode ini
//   void takeOff() {}
//   void land() {}
// }

// class Pesawat implements PerilakuTerbang {
//   // Wajib mengimplementasikan SEMUA metode dari PerilakuTerbang
//   @override
//   void land() {
//     print('Pesawat mendarat dengan roda.');
//   }

//   @override
//   void takeOff() {
//     print('Pesawat lepas landas dari landasan.');
//   }
// }

// void main() {
//   var boeing = Pesawat();
//   boeing.land(); // Output: Pesawat mendarat dengan roda.
//   boeing.takeOff(); // Output: Pesawat lepas landas dari landasan.
// }

// Kapan Menggunakan extends vs. implements?
// -Gunakan extends ketika Anda ingin membuat hubungan "is-a" (adalah-sebuah) dan mewarisi properti serta metode dari Parent Class.
//  Tujuan Pewarisan (Inheritance) : Mendapatkan semua implementasi dari Parent Class, hanya meng-override yang perlu diubah.
// -Gunakan implements ketika Anda ingin membuat hubungan "can-do" (dapat-melakukan) dan hanya ingin mematuhi kontrak yang ditentukan oleh Interface tanpa mewarisi implementasi apa pun.
//  Tujuan Kontrak (Interface) : Mengabaikan semua implementasi Parent Class dan memaksa Child Class mematuhi kontrak dengan mengimplementasikan ulang semua(override) properti dan metode dari Interface, tanpa mewarisi implementasi apa pun.


// Abstraction (Abstraksi) adalah alat yang kuat untuk merancang sistem yang bersih di mana pengguna hanya berinteraksi dengan fungsionalitas (apa yang dilakukan objek) tanpa perlu mengetahui detail internalnya (bagaimana objek melakukannya).

// Ringkasan Belajar OOP Dart part 2:
// Empat Pilar Utama OOP:
// 1. Enkapsulasi (Encapsulation)
// 2. Inheritance (Pewarisan)
// 3. Polymorphism (Polimorfisme)
// 4. Abstraction (Abstraksi)

// Selain itu, ada konsep tambahan yang penting dalam OOP Dart:
// -Getter dan Setter: Metode khusus untuk mengakses dan memodifikasi properti private.
// -Hak Akses: Public (dapat diakses dari mana saja) dan Private (hanya dapat diakses di dalam file yang sama).
// -Abstract Class: Class yang tidak dapat di-instansiasi secara langsung, digunakan sebagai dasar untuk Class lain.
// -Interface: Class yang berfungsi sebagai kontrak yang harus diikuti oleh Class yang menerapkannya.