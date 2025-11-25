// Belajar Function dalam Dart?
//  -Dalam Dart, fungsi yang tidak mengembalikan nilai secara eksplisit menggunakan keyword void

// Belajar Apa itu Parameter?
//  -Parameter adalah variabel yang didefinisikan dalam tanda kurung setelah nama fungsi
//  -Parameter memungkinkan Anda untuk mengirim data ke dalam fungsi saat memanggilnya
// Parameter memiliki dua tujuan utama:
//  Menerima Data: Mengizinkan data dari luar (dari bagian kode yang memanggil fungsi) masuk ke dalam fungsi.
//  Membuat Fungsi Reusable: Memungkinkan fungsi melakukan tugas yang sama tetapi dengan data yang berbeda setiap kali dipanggil, menjadikannya fleksibel dan dapat digunakan kembali (reusable).
// Sintaks Parameter:
//  |'tipeData' dan 'namaParameter' wajib diisi |
//  |void namaFungsi(tipeData namaParameter) {  |
//  | ... kode menggunakan namaParameter}       |
// Jenis-jenis Parameter:
//  Parameter Positional Wajib (Required Positional Parameters)
//    -parameter yang diisi secara berurutan dan wajib saat memanggil fungsi. Jika tidak diisi, akan terjadi kesalahan (error).
//  Parameter Bernama (Named Parameters)
//    -Parameter ini didefinisikan menggunakan kurung kurawal {}. Urutan saat pemanggilan tidak penting, tetapi Anda harus menyebutkan nama parameter diikuti titik dua (:) saat memanggilnya.
//    a). Parameter Bernama Wajib (required)
// void cetakInfo({required String judul, required String penulis}) {
//   print("Judul: $judul oleh $penulis");
// }

// void main() {
//   cetakInfo(penulis: "Andrea Hirata", judul: "Laskar Pelangi");
// }
//    b). Parameter Bernama Opsional (optional):dengan menghapus required maka parameter boleh bernilai null atau tidak diisi saat pemanggilan fungsi.
// Jika nilai tidak diberikan, warna default adalah 'putih'
// void setWarna(String objek, {String warna = "putih"}) {
//   print("$objek berwarna $warna");
// }
// void main() {
//   setWarna("Mobil", warna: "merah"); // Output: Mobil berwarna merah
//   setWarna("Dinding"); // Output: Dinding berwarna putih (menggunakan default)
// }
//  Parameter Positional Opsional ([])
//    -Parameter ini didefinisikan menggunakan tanda kurung siku []. Saat memanggil fungsi, Anda dapat memilih untuk mengisi parameter ini atau tidak. Jika tidak diisi, nilainya akan menjadi null atau nilai default jika ditentukan.
// [String salam] adalah opsional
// void sapaDenganSalam(String nama, [String salam = "Hai"]) {
//   print("$salam, $nama!");
// }

// void main() {
//   sapaDenganSalam("Budi", "Selamat Pagi"); // Output: Selamat Pagi, Budi!
//   sapaDenganSalam("Ani");                // Output: Hai, Ani! (menggunakan default)
// }
//  Kapan Menggunakan Jenis Parameter yang Mana?
//  -Positional Wajib: Untuk input mendasar yang urutannya logis (misalnya: koordinat x, y).
//  -Named Wajib (required): Untuk input penting yang urutan penulisan kodenya bisa membingungkan, tetapi nilainya harus disediakan (misalnya: konfigurasi warna, ukuran).
//  -Named Opsional: Untuk input tambahan atau pengaturan yang sebagian besar waktu menggunakan nilai default (misalnya: debugMode: true).

// ##############################################
// Contoh Function tanpa parameter dan tanpa nilai kembalian(return)
// void tampilkanSapaan() {
//   print("Halo! Ini adalah fungsi tanpa parameter.");
//   print("Fungsi ini hanya menjalankan perintah dan tidak mengembalikan nilai.");
// }
// void main() {
//   tampilkanSapaan();
// }
// #Penjelasan kode:
// -void: Menunjukkan bahwa fungsi ini tidak akan mengembalikan nilai apa pun (tanpa return).
// -tampilkanSapaan: Nama fungsi yang dibuat.
// -(): Kurung buka dan tutup yang kosong menandakan bahwa fungsi ini tidak memerlukan parameter atau input saat dipanggil.
// -{ ... }: Blok kode di dalamnya berisi aksi yang akan dijalankan fungsi, yaitu menampilkan dua baris teks.
// -tampilkanSapaan();: Baris ini adalah cara Anda memanggil fungsi tersebut di dalam fungsi utama (main()) agar kode di dalamnya dieksekusi.
// #############################################

// Contoh Function Sederhana Tanpa Return
// void main() {
//   tampilkan();
// }
// tampilkan() {
//   print("Hello Fiki");
// }
// Contoh Function Dengan Nilai Kembalian(return)
// void main() {
//   print(munculkanangka());
// }
// munculkanangka() {
//   return 2;
// }
// Contoh Function dengan parameter
// void main() {
//   print(kalikanDua(6));
// }
// kalikanDua(angka) {
//   return angka * 2;
// }
// Contoh Function dengan beberapa parameter
// void main() {
//   print(kalikan(5, 6));
// }
// kalikan(x, y) {
//   return x * y;
// }
// Contoh Inisialisasi parameter dengan nilai default
// void main() {
//   tampilkanangka(5);
// }
// void tampilkanangka(n1, {s1 = 45}) {
//   print(n1); //hasil akan 5 karena initialisasi 5 didalam value tampilkan
//   print(s1); //hasil adalah 45 karena dari parameter diisi 45
// }

// Waspadai pengiriman parameter yang UNDEFINED!
// -Anda harus berhati-hati agar tidak secara tidak sengaja melewatkan atau menggunakan variabel yang nilainya belum disetel atau tidak ada (seringkali undefined atau null) sebagai input (parameter/argumen) ke suatu fungsi, karena hal ini dapat menyebabkan kesalahan tak terduga dalam program Anda.
// Di Dart, ada dua skenario utama yang membuat nilai input menjadi bermasalah:
// 1. Pelanggaran Null Safety (Parameter Wajib)
// -Ketika Anda memiliki parameter non-nullable (tanpa tanda ?) yang wajib diisi, tetapi Anda tidak memberikan nilai atau mencoba memberinya null (kecuali ia ditandai late).
// 2. Parameter Opsional yang Tidak Ditangani
// -Ketika Anda menggunakan parameter nullable (?) atau parameter opsional yang tidak disalurkan saat pemanggilan, dan Anda tidak menyiapkan kode untuk menangani kasus nilai null.
// ❌ Contoh Masalah (Tanpa Penanganan NULL)
// int gandakan(int? angka) {
//   // Jika 'angka' bernilai null, operasi ini akan gagal atau error
//   // karena Dart tidak tahu cara mengalikan 'null'.
//   // Ini melanggar Null Safety jika tidak di-handle!
//   return angka * 2;
// }

// void main() {
//   int? input = null; // Variabel diset null
//   // Ini akan menyebabkan error pada Runtime (atau di-prevent oleh Null Safety)
//   // print(gandakan(input));
// }
// ✅ Cara Mengatasinya (Kegunaan Pengecekan NULL)
// int gandakan(int? angka) {
//   // KEGUNAAN: Menangani kasus null dengan aman
//   if (angka == null) {
//     print("Peringatan: Input adalah NULL. Mengembalikan nilai default 0.");
//     return 0; // Mengembalikan nilai default yang aman
//   }

//   // Jika 'angka' dijamin bukan null, baru lakukan operasi
//   return angka * 2;
// }

// void main() {
//   int? input = null;

//   // Kode dijalankan dengan aman meskipun input adalah null
//   print("Hasil: ${gandakan(input)}");

//   // Output:
//   // Peringatan: Input adalah NULL. Mengembalikan nilai default 0.
//   // Hasil: 0
// }

// Anonymous Function (Fungsi Anonim) di Dart
// -Anonymous Function (atau Lambda) adalah sebuah function yang tidak memiliki nama. Ia didefinisikan secara inline (langsung di tempat ia digunakan) dan biasanya digunakan sebagai nilai atau data yang bisa disimpan dalam variabel atau diteruskan sebagai argumen ke fungsi lain.
// -Fungsi anonim memiliki struktur yang mirip dengan fungsi biasa, tetapi tanpa nama di antara tipe kembalian (atau void) dan tanda kurung parameter:
// 1. Contoh nya
// (tipe_data_parameter param1, ...) {
//   // blok kode
//   return nilai; // opsional
// };

// 2. Contoh tanpa tipe data kembalian dan parameter:
// () {
//   print("Saya tidak punya nama!");
// };

// 3. Contoh dengan parameter:
// (int x, int y) {
//   return x + y;
// };

// 💾 Menampung Fungsi Anonim Sebagai Variabel
// Ketika Anda menampung fungsi anonim dalam variabel, Anda pada dasarnya membuat variabel tersebut menjadi "alias" atau "penunjuk" ke fungsi tersebut.
// void main() {
//   // Deklarasi variabel 'penjumlahan' yang bertipe Function
//   var penjumlahan = (int a, int b) {
//     return a + b;
//   };
//   // Deklarasi variabel 'sapa' yang bertipe Function
//   // Menggunakan sintaks Arrow Function (bentuk ringkas)
//   var sapa = (String nama) => print("Halo, $nama! Senang bertemu.");
//   // Memanggil fungsi melalui variabel
//   int hasil = penjumlahan(10, 5);
//   print("Hasil penjumlahan: $hasil"); // Output: Hasil penjumlahan: 15
//   sapa("Budi"); // Output: Halo, Budi! Senang bertemu.
// }
// Penjelasan:
// -var penjumlahan = ...: Variabel penjumlahan sekarang menyimpan definisi dari fungsi tersebut, bukan hasil eksekusinya.
// -penjumlahan(10, 5): Memanggil variabel seolah-olah ia adalah fungsi.


// 💡 Kegunaan Utama Anonymous Function
// -Kegunaan utama Fungsi Anonim dalam Dart, terutama sebagai variable atau argument, adalah untuk memfasilitasi pemrograman fungsional, seperti:
// 1. Callbacks (Panggilan Balik): Meneruskan kode yang harus dijalankan nanti (misalnya, setelah operasi asinkron selesai, atau ketika tombol diklik). Contoh paling umum: ketika menggunakan metode seperti forEach, map, atau where pada List.
// List<int> angka = [1, 2, 3];
// // Meneruskan fungsi anonim ke dalam forEach
// angka.forEach((n) { 
//   print("Angka ke-$n");
// });
// 2. Event Handling (Flutter/UI): Digunakan untuk mendefinisikan apa yang harus terjadi saat sebuah event (seperti menekan tombol) dipicu.
// 3. Membuat Fungsi Lokal: Mendefinisikan fungsi pembantu yang hanya akan digunakan di dalam satu fungsi besar saja.