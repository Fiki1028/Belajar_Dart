// Asynchronous Programming
// Secara default, Dart adalah bahasa single-threaded (berjalan dalam satu utas/alur)/Synchronous. Ini berarti kode dijalankan secara berurutan, baris demi baris.
// Namun, dalam banyak kasus, terutama saat berurusan dengan operasi I/O (seperti membaca file, mengambil data dari internet, atau menunggu input pengguna), kita tidak ingin program kita berhenti dan menunggu operasi tersebut selesai. Di sinilah konsep asynchronous programming masuk.
// Asynchronous programming memungkinkan kita untuk menjalankan operasi yang memakan waktu tanpa memblokir eksekusi kode lainnya. Dengan kata lain, kita dapat memulai operasi yang memakan waktu dan melanjutkan menjalankan kode lainnya sambil menunggu operasi tersebut selesai.

// Synchronous vs. Asynchronous
// Synchronous
// -Kode dijalankan secara berurutan. Jika ada operasi yang memakan waktu, program akan menunggu hingga operasi tersebut selesai sebelum melanjutkan.
// -Cocok untuk operasi yang cepat dan tidak memerlukan penanganan waktu tunggu yang lama. Operasi cepat (aritmatika, manipulasi string).
// -Kinerja UI: UI dapat terasa lambat atau tidak responsif jika ada operasi yang memakan waktu lama. Berpotensi memblokir UI (membuat aplikasi freeze).
// Asynchronous
// -Kode dapat dijalankan tanpa menunggu operasi yang memakan waktu selesai
// -Cocok untuk operasi yang memerlukan waktu tunggu yang lama (I/O, jaringan, timer, fetching data dari API, membaca file).
// -Kinerja UI: UI tetap responsif karena operasi yang memakan waktu dijalankan di latar belakang.

// Mengapa Asynchronous Programming Penting?
//  |Ketika Anda membuat panggilan ke API web (misalnya, mengambil data cuaca), proses ini bisa memakan waktu ratusan milidetik.
//  |Jika kode Anda sinkron, seluruh aplikasi akan berhenti bekerja (membeku/ janky) selama menunggu data tiba.
//  |Asinkron memungkinkan Dart untuk "menangguhkan" tugas yang lama tersebut dan melanjutkan pemrosesan event lain
//  |(seperti animasi UI atau tap pengguna) hingga hasilnya siap.

// 💡 Mekanisme Asynchronous di Dart
// Tiga kata kunci utama yang digunakan untuk menangani asinkron adalah Future, async, dan await.
// Future
// Future adalah representasi dari nilai yang mungkin belum tersedia. Future dapat berada dalam tiga keadaan:
// 1. Uncompleted: Future belum selesai (nilai belum tersedia).
// 2. Completed with a value: Future selesai dengan nilai yang diharapkan.
// 3. Completed with an error: Future selesai dengan kesalahan.
// async dan await
// Kata kunci async digunakan untuk menandai fungsi sebagai fungsi asinkron. Fungsi ini akan mengembalikan Future.
// Kata kunci await digunakan di dalam
// fungsi async untuk menunggu penyelesaian Future sebelum melanjutkan eksekusi kode berikutnya.
// Contoh Penggunaan Asynchronous di Dart
// import 'dart:async';

// void main() async {
//   print('Mulai mengambil data...');

//   // Memanggil fungsi asinkron
//   String data = await fetchData();

//   print('Data diterima: $data');
//   print('Selesai.');
// }

// // Fungsi asinkron yang mengembalikan Future
// Future<String> fetchData() async {
//   // Simulasi operasi yang memakan waktu (misalnya, mengambil data dari internet)
//   await Future.delayed(Duration(seconds: 2)); // Menunggu selama 2 detik
//   return 'Data dari server';
// }
// Penjelasan Kode:
// 1. Fungsi main() ditandai dengan kata kunci async, yang memungkinkan penggunaan await di dalamnya.
// 2. Fungsi fetchData() juga ditandai dengan async dan mengembalikan Future<String>.
// 3. Di dalam fetchData(), kita menggunakan Future.delayed untuk mensimulasikan operasi yang memakan waktu (2 detik).
// 4. Saat memanggil fetchData() di dalam main(), kita menggunakan await untuk menunggu hasilnya tanpa memblokir eksekusi kode lainnya.
// 5. Setelah data diterima, program melanjutkan eksekusi dan mencetak hasilnya.
// Dengan menggunakan asynchronous programming, kita dapat menjaga aplikasi tetap responsif dan efisien dalam menangani operasi yang memakan waktu.

// Kesimpulan
// Asynchronous programming adalah konsep penting dalam pengembangan aplikasi modern, terutama ketika berurusan dengan operasi I/O yang memakan waktu.
// Dart menyediakan mekanisme yang kuat untuk menangani asinkron melalui Future, async, dan await, memungkinkan
// pengembang untuk menulis kode yang bersih dan mudah dipahami sambil menjaga kinerja aplikasi tetap optimal.
