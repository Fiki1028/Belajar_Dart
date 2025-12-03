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
// Contoh Penggunaan Future di Dart
// import 'dart:async';
// void main() {
//   print('Mulai mengambil data...');
//   // Memanggil fungsi yang mengembalikan Future
//   fetchData().then((data) {
//     print('Data diterima: $data');
//   }).catchError((error) {
//     print('Terjadi kesalahan: $error');
//   });
//   print('Selesai.');
// }
// // Fungsi yang mengembalikan Future
// Future<String> fetchData() {
//   // Simulasi operasi yang memakan waktu (misalnya, mengambil data dari internet)
//   return Future.delayed(Duration(seconds: 2), () {
//     return 'Data dari server';
//   });
// }
// Penjelasan Kode:
// 1. Fungsi fetchData() mengembalikan Future<String> yang akan selesai setelah 2 detik.
// 2. Di dalam main(), kita memanggil fetchData() dan menggunakan then() untuk menangani hasilnya ketika Future selesai.
// 3. Jika terjadi kesalahan, catchError() akan menangani kesalahan tersebut.
// 4. Program mencetak 'Selesai.' segera setelah memanggil fetchData(), tanpa menunggu hasilnya.

// async dan await
// Kata kunci async digunakan untuk menandai fungsi sebagai fungsi asinkron. Fungsi ini akan mengembalikan Future.
// Kata kunci await digunakan di dalam fungsi async untuk menunggu penyelesaian Future sebelum melanjutkan eksekusi kode berikutnya.
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

// async
// -Fungsi yang ditandai dengan async akan selalu mengembalikan Future.
// -async diletakkan di depan deklarasi fungsi.
// -Menandai bahwa fungsi tersebut bersifat asinkron dan dapat menggunakan kata kunci await di dalamnya.
// -Fungsi: Menyatakan bahwa fungsi tersebut akan berjalan secara asinkron dan akan mengembalikan objek Future.
// contoh
// |Fungsi ini akan mengembalikan Future<String>
// |Future<String> ambilData() async {
// |   // ... kode asinkron di sini
// |}
// penjelasan
// |Fungsi ambilData() ditandai dengan async, menunjukkan bahwa fungsi ini bersifat asinkron
// |dan akan mengembalikan Future yang menghasilkan String.

// await
// Kata kunci await hanya dapat digunakan di dalam fungsi async.
// -await diletakkan di depan ekspresi Future.
// -Ini digunakan untuk menunggu penyelesaian Future sebelum melanjutkan eksekusi kode berikutnya.
// -Fungsi: Menginstruksikan Dart untuk menangguhkan eksekusi sisa fungsi async yang berisi await tersebut, sampai Future di depannya selesai dan menghasilkan nilainya.
// -Syarat: await hanya bisa digunakan di dalam fungsi yang dideklarasikan dengan async.
// contoh
// |String data = await ambilData();
// penjelasan
// |Kode ini menunggu hingga Future yang dikembalikan oleh ambilData() selesai
// |dan mengembalikan nilainya, yang kemudian disimpan dalam variabel data.

// Kesimpulan
// Asynchronous programming adalah konsep penting dalam pengembangan aplikasi modern, terutama ketika berurusan dengan operasi I/O yang memakan waktu.
// Dart menyediakan mekanisme yang kuat untuk menangani asinkron melalui Future, async, dan await, memungkinkan
// pengembang untuk menulis kode yang bersih dan mudah dipahami sambil menjaga kinerja aplikasi tetap optimal.

// Penanganan Kesalahan (Error Handling) dalam Asynchronous Programming
// try-catch dengan async/await
// Saat menggunakan async/await, Anda menangani error yang dihasilkan oleh Future menggunakan blok try-catch seperti pada kode sinkron biasa:
// Contoh Penanganan Error dengan try-catch

// Future<String> ambilDataGagal() {
//   return Future.delayed(Duration(seconds: 1), () {
//     throw Exception("Koneksi gagal: Server mati."); // Melemparkan error
//   });
// }

// void cobaAmbilData() async {
//   try {
//     String hasil = await ambilDataGagal();
//     print("Sukses: $hasil");
//   } catch (e) {
//     // Blok ini menangkap error yang dilempar oleh Future
//     print("Terjadi Error: $e");
//   } finally {
//     print("Proses selesai (terlepas dari sukses/gagal).");
//   }
// }
// Penjelasan Kode:
// 1. Fungsi ambilDataGagal() mengembalikan Future yang melemparkan Exception setelah 1 detik.
// 2. Di dalam fungsi cobaAmbilData(), kita menggunakan blok try-catch untuk menangani error yang mungkin terjadi saat menunggu Future dengan await.
// 3. Jika Future melemparkan error, blok catch akan menangkapnya dan mencetak pesan error.
// 4. Blok finally akan selalu dijalankan, terlepas dari apakah operasi berhasil atau gagal.
// Penggunaan .catchError() dengan Future
// Selain menggunakan try-catch, Anda juga dapat menangani error pada Future menggunakan metode .catchError().
// Contoh Penanganan Error dengan .catchError()
// void cobaAmbilDataDenganCatchError() {
//   ambilDataGagal().then((hasil) {
//     print("Sukses: $hasil");
//   }).catchError((e) {
//     // Menangkap error yang dilempar oleh Future
//     print("Terjadi Error: $e");
//   }).whenComplete(() {
//     print("Proses selesai (terlepas dari sukses/gagal).");
//   });
// }
// Penjelasan Kode:
// 1. Fungsi cobaAmbilDataDenganCatchError() memanggil ambilDataGagal() dan menggunakan .then() untuk menangani hasil sukses.
// 2. Jika Future melemparkan error, .catchError() akan menangkapnya dan mencetak pesan error.
// 3. Metode .whenComplete() akan selalu dijalankan setelah Future selesai, terlepas dari apakah operasi berhasil atau gagal.
// Kesimpulan
// Penanganan kesalahan dalam asynchronous programming di Dart dapat dilakukan dengan mudah menggunakan blok try-catch saat menggunakan async/await,
// atau dengan metode .catchError() saat bekerja langsung dengan Future. Pendekatan ini memungkinkan Anda untuk menulis kode yang lebih bersih dan mudah dipahami sambil memastikan bahwa aplikasi Anda dapat menangani error dengan baik.
// import 'dart:async';
// void main() {
//   cobaAmbilData();
//   cobaAmbilDataDenganCatchError();
// }
// // Fungsi yang mengembalikan Future yang melemparkan error
// Future<String> ambilDataGagal() {
//   return Future.delayed(Duration(seconds: 1), () {
//     throw Exception("Koneksi gagal: Server mati."); // Melemparkan error
//   });
// }
// // Penanganan error dengan try-catch
// void cobaAmbilData() async {
//   try {
//     String hasil = await ambilDataGagal();
//     print("Sukses: $hasil");
//   } catch (e) {
//     // Blok ini menangkap error yang dilempar oleh Future
//     print("Terjadi Error: $e");
//   } finally {
//     print("Proses selesai (terlepas dari sukses/gagal).");
//   }
// }
// // Penanganan error dengan .catchError()
// void cobaAmbilDataDenganCatchError() {
//   ambilDataGagal().then((hasil) {
//     print("Sukses: $hasil");
//   }).catchError((e) {
//     // Menangkap error yang dilempar oleh Future
//     print("Terjadi Error: $e");
//   }).whenComplete(() {
//     print("Proses selesai (terlepas dari sukses/gagal).");
//   });
// }

// konsep Blocking (Memblokir) dan Non-blocking
// Blocking
// -Operasi blocking menghentikan eksekusi kode selanjutnya hingga operasi tersebut selesai.
// -Contoh: Membaca file besar secara sinkron, menunggu respons dari server secara sinkron.
// -Dampak: Dapat menyebabkan aplikasi terasa lambat atau tidak responsif, terutama pada UI.

// Non-blocking
// -Operasi non-blocking memungkinkan eksekusi kode lainnya berjalan tanpa menunggu operasi tersebut selesai.
// -Contoh: Menggunakan Future, async/await untuk operasi I/O.
// -Dampak: Aplikasi tetap responsif, memungkinkan penanganan banyak tugas secara bersamaan.
// Contoh Blocking vs Non-blocking

// import 'dart:async';
// void main() {
//   print('Mulai operasi blocking...');
//   operasiBlocking();
//   print('Selesai operasi blocking.');

//   print('\nMulai operasi non-blocking...');
//   operasiNonBlocking();
//   print('Selesai operasi non-blocking.');
// }
// // Fungsi blocking (simulasi dengan sleep)
// void operasiBlocking() {
//   // Simulasi operasi yang memakan waktu (misalnya, membaca file besar)
//   sleep(Duration(seconds: 2)); // Memblokir eksekusi selama 2 detik
//   print('Operasi blocking selesai.');
// }
// // Fungsi non-blocking menggunakan Future
// void operasiNonBlocking() {
//   // Simulasi operasi yang memakan waktu (misalnya, mengambil data dari internet)
//   Future.delayed(Duration(seconds: 2), () {
//     print('Operasi non-blocking selesai.');
//   });
// }

// Penjelasan Kode:
// 1. Fungsi operasiBlocking() mensimulasikan operasi blocking dengan menggunakan sleep, yang memblokir eksekusi selama 2 detik.
// 2. Fungsi operasiNonBlocking() menggunakan Future.delayed untuk mensimulasikan operasi non-blocking, yang memungkinkan eksekusi kode lainnya berjalan tanpa menunggu.
// 3. Saat menjalankan main(), Anda akan melihat bahwa operasi blocking menghentikan eksekusi kode selanjutnya,
//    sedangkan operasi non-blocking memungkinkan kode lainnya untuk berjalan segera setelah pemanggilan fungsi.

// Kesimpulan
// Memahami konsep blocking dan non-blocking sangat penting dalam pengembangan aplikasi,
// terutama untuk menjaga responsivitas aplikasi. Dengan menggunakan asynchronous programming,
// kita dapat menghindari operasi blocking dan memastikan aplikasi tetap berjalan dengan lancar.
// Fungsi sleep untuk mensimulasikan operasi blocking
// void sleep(Duration duration) {
//   final end = DateTime.now().add(duration);
//   while (DateTime.now().isBefore(end)) {
//     // Looping hingga waktu habis
//   }
// }
// Penjelasan Kode:
// Fungsi sleep mensimulasikan operasi blocking dengan membuat loop yang berjalan hingga durasi yang ditentukan habis.
// Ini hanya untuk tujuan ilustrasi; dalam praktik nyata, Anda tidak boleh menggunakan metode ini karena akan memblokir thread utama.
// import 'dart:async';

// void main() {
//   print('Mulai operasi blocking...');
//   operasiBlocking();
//   print('Selesai operasi blocking.');

//   print('\nMulai operasi non-blocking...');
//   operasiNonBlocking();
//   print('Selesai operasi non-blocking.');
// }

// // Fungsi blocking (simulasi dengan sleep)
// void operasiBlocking() {
//   // Simulasi operasi yang memakan waktu (misalnya, membaca file besar)
//   sleep(Duration(seconds: 2)); // Memblokir eksekusi selama 2 detik
//   print('Operasi blocking selesai.');
// }

// // Fungsi non-blocking menggunakan Future
// void operasiNonBlocking() {
//   // Simulasi operasi yang memakan waktu (misalnya, mengambil data dari internet)
//   Future.delayed(Duration(seconds: 2), () {
//     print('Operasi non-blocking selesai.');
//   });
// }

// // Fungsi sleep untuk mensimulasikan operasi blocking
// void sleep(Duration duration) {
//   final end = DateTime.now().add(duration);
//   while (DateTime.now().isBefore(end)) {
//     // Looping hingga waktu habis
//   }
// }
// Penjelasan Kode:
// Fungsi sleep mensimulasikan operasi blocking dengan membuat loop yang berjalan hingga durasi yang ditentukan habis.
// Ini hanya untuk tujuan ilustrasi; dalam praktik nyata, Anda tidak boleh menggunakan metode ini karena akan memblokir thread utama.
