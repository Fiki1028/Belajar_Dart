// 1. List (Daftar)
// -Pemrograman Dart, List adalah salah satu tipe data yang digunakan untuk menyimpan kumpulan data dengan tipe yang SAMA.
// -List dapat dianggap sebagai suatu daftar atau array yang berisi beberapa elemen
// void main() {
//   // Deklarasi List dengan tipe data
//   List<int> angka = [10, 20, 30, 40, 50, 20]; // Tipe data Int
//   List<String> nama = ["Alice", "Bob", "Charlie"]; // Tipe data String

//   // Mengakses elemen List menggunakan indeks(dimulai dari 0/array)
//   print("Elemen pertama: ${angka[0]}"); // Output: Elemen pertama: 10
//   print("Elemen kedua: ${nama[1]}"); // Output: Elemen kedua: Bob
// }

// Kita juga dapat membuat list kosong dengan sintaksis [ ] atau dengan menggunakan konstruktor List():
// Funsi list kososng
// - Sebagai penampung hasil pemrosesan data : Menyediakan variabel yang dapat dimanipulasi (ditambah atau diubah) tanpa memengaruhi List sumber.
// void main() {
//   List<int> angkaSumber = [1, 2, 3, 4, 5];
//   List<int> hasilFilter = []; // <-- List kosong sebagai penampung
//   for (var angka in angkaSumber) {
//     if (angka % 2 == 0) {
//       hasilFilter.add(angka);
//     }
//   }
//   print(hasilFilter); // hasilFilter sekarang berisi [2, 4]
// }
// - Inisialisasi Properti Kelas (Class Property) : Dalam pemrograman berorientasi objek, List kosong sering digunakan untuk menginisialisasi properti (variabel) yang harus berupa List, meskipun saat objek dibuat, List tersebut belum memiliki data. Memastikan properti tersebut tidak bernilai null dan selalu dapat dipanggil
// class KeranjangBelanja {
//   List<String> item = []; // <-- List kosong pada inisialisasi
//   void tambahItem(String nama) {
//     item.add(nama);
//   }
// }
// Contoh: Bayangkan kita memiliki daftar nilai siswa dan ingin memisahkan nilai-nilai yang mencapai batas kelulusan (misalnya, >= 75).
// void filterNilaiLulus() {
//   // 1. List data sumber (nilai siswa)
//   List<int> semuaNilai = [88, 65, 75, 92, 58, 80, 70];
//   const int batasLulus = 75;
//   // 2. Deklarasi List kosong sebagai penampung hasil
//   List<int> nilaiLulus = []; // <-- List kosong siap diisi
//   // 3. Iterasi (Loop) melalui List sumber
//   for (var nilai in semuaNilai) {
//     // 4. Periksa kondisi
//     if (nilai >= batasLulus) {
//       // 5. Jika kondisi terpenuhi, tambahkan ke List penampung
//       nilaiLulus.add(nilai);
//     }
//   }
//   print("=== HASIL FILTER ===");
//   print("Semua Nilai: $semuaNilai");
//   print("Batas Kelulusan: $batasLulus");
//   print("Nilai yang Lulus (menggunakan List kosong): $nilaiLulus");
// }
// void main() {
//   filterNilaiLulus();
// }

// 2. Set (Himpunan)
// Set adalah koleksi data yang tidak terurut dan tidak mengizinkan duplikat nilai. Ini berguna untuk memastikan setiap elemen unik.
// void main() {
//   Set<String> warnaUnik = {'Merah', 'Biru', 'Kuning', 'Merah'};
//   // Nilai 'Merah' yang kedua akan diabaikan.

//   // Akses Data: Tidak menggunakan indeks karena tidak terurut. Anda biasanya menggunakan loop atau metode contains().
//   print(warnaUnik); // Output: {Merah, Biru, Kuning}
// }

// 3. Map (Peta)
// - Map adalah koleksi data yang menyimpan pasangan kunci (key) dan nilai (value). Kunci harus unik, dan digunakan untuk mengambil nilai terkait.
// - Dalam satu objek map, kunci harus bersifat unik,namun tidak dengan nilai. Hal ini berarti bahwa satu nilai yang sama bisa saja muncul pada beberapa elemen map
// contoh penggunaan map
// void main() {
//   // Deklarasi Map dengan tipe data
//   Map<String, int> umurSiswa = {
//     'Andi': 15,
//     'Budi': 16,
//     'Citra': 15,
//   };

//   // Mengakses nilai menggunakan kunci
//   print("Umur Andi: ${umurSiswa['Andi']}"); // Output: Umur Andi: 15

//   // Menambahkan pasangan kunci-nilai baru
//   umurSiswa['Dina'] = 17;

//   // Menampilkan seluruh isi Map
//   print(umurSiswa);
// } // Output: {Andi: 15, Budi: 16, Citra: 15, Dina: 17}

// 4. Menampilkan Berbagai Tipe Data dalam List
// Klasifikasi Poin Utama Tampilan List:
// - List Heterogen : List dapat menyimpan berbagai tipe data secara bersamaan (misalnya, String, int, double). Contoh: ["C", "C++", "Java", 2, 34]
// - Iterasi/Looping : Untuk menampilkan semua elemen List, kita bisa menggunakan perulangan (looping), seperti perulangan for...in. Contoh: for(var language in languages) { print(language); }
// - Properti length : Untuk mengetahui jumlah total elemen dalam List, gunakan properti . Contoh: length. languages.length
// Contoh:
// void main() {
//   var languages = ["C", "C++", "Java", "Dart", 2, 34];
//   for (var language in languages) {
//     // Mengulang setiap elemen
//     print(language);
//   }
//   print("Total bahasa: ${languages.length}"); // Mengakses jumlah elemen
// }

// 5. List Multidimensi
// - List yang berisi List di dalamnya, sering digunakan untuk merepresentasikan data seperti tabel atau matriks.
// Contoh:
// void main() {
//   var arrayMulti = [
//     [1, 2, 3], // Baris 0
//     [4, 5, 6], // Baris 1
//     [7, 8, 9], // Baris 2
//   ];
//   print(arrayMulti[0][0]); // Output: 1 (Baris 0, Kolom 0)
//   print(arrayMulti[2][1]); // Output: 8 (Baris 2, Kolom 1)
// }

// 6. Method yang ada pada List dan maps
// A. Method untuk Iterasi dan Cek
// -forEach()
// -contains()
// -every()
// B. Method untuk Manipulasi/Pemrosesan Data
// -sort()
// -reduce()
// -fold()
// -expand()
// C. Method untuk Filter dan Pencarian
// -where()
// -firstWhere()
// -singleWhere()
// -take()
// -skip()
// Method untuk Modifikasi List
// add()
// addAll()
