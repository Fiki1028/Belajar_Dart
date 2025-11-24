// 1.Looping dengan While
// Contoh Looping While Mengembalikan Angka 1-9
// void main() {
//   var flag = 1;
//   while (flag < 10) {
//     print("iterasi ke" + flag.toString());
//     flag++; // Mengubah nilai flag dengan menambahkan 1
//   }
// }
// Contoh Looping While Mengembalikan Angka Total
// void main() {
//   var deret = 5;
//   var jumlah = 0;
//   while (deret > 0) {
//     // Loop akan terus berjalan selama nilai deret masih di atas 0
//     jumlah += deret; // Menambahkan nilai variable jumlah dengan angka deret
//     deret--; // Mengubah nilai deret dengan mengurangi 1
//     print('Jumlah saat ini: ' + jumlah.toString());
//   }
//   print('jumlah Terakhir: ' + jumlah.toString());
// }

// 2.Looping Dengan For
// Contoh Looping For Mengembalikan Angka 1-9
// void main() {
//   for (var angka = 1; angka < 10; angka++) {
//     print('Iterasi ke-' + angka.toString());
//   }
// }
// Contoh Looping For Mengembalikan Angka Total
// void main() {
//   var jumlah = 0;
//   for (var deret = 5; deret > 0; deret--) {
//     jumlah += deret;
//     print('Jumlah saat ini: ' + jumlah.toString());
//   }
//   print('Jumlah terakhir: ' + jumlah.toString());
// }
// Contoh Looping For Dengan Increment dan Decrement Lebih dari 1
// void main() {
//   for (var deret = 0; deret < 10; deret += 2) {
//     print('Iterasi dengan Increment counter 2: ' + deret.toString());
//   }
//   print('-------------------------------');
//   for (var deret = 15; deret > 0; deret -= 3) {
//     print('Iterasi dengan Decrement counter : ' + deret.toString());
//   }
// }
