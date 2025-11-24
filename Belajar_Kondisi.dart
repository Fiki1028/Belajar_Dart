// 1. Penerapan ternary operator dalam Dart
// Contoh Tanpa Ternary
// void main() {
//   var isThisWahyu = true;
//   if (isThisWahyu) {
//     print("wahyu");
//   } else {
//     print("bukan wahyu");
//   }
// }
// Contoh Dengan Ternary
// void main() {
//   var isThisWahyu = false;
//   isThisWahyu ? print("wahyu") : print("bukan wahyu");
// } //tanda tanya (?) menggantikan if, dan titik dua (:) menggantikan else

// 2. Penerapan if/else if/else dalam Dart
// Contoh Kode True
// void main() {
//   if (true) {
//     print("jalankan code");
//   }
// }
// Contoh Kode False
// void main() {
//   if (false) {
//     print("Program tidak jalan code");
//   }
// }
// Contoh perbandingan suatu nilai
// void main() {
//   var mood = "happy";
//   if (mood == "happy") {
//     print("hari ini aku bahagia!");
//   }
// }
// Contoh Branching Sederhana
// void main() {
//   var minimarketStatus = "open";
//   if (minimarketStatus == "open") {
//     print("saya akan membeli telur dan buah");
//   } else {
//     print("minimarketnya tutup");
//   }
// }
// Contoh Branching Dengan Kondisi
// void main() {
//   var minimarketStatus = "close";
//   var minuteRemainingToOpen = 6;
//   if (minimarketStatus == "open") {
//     print("saya akan membeli telur dan buah");
//   } else if (minuteRemainingToOpen <= 5) {
//     print("minimarket buka sebentar lagi, saya tungguin");
//   } else {
//     print("minimarket tutup, saya pulang lagi");
//   }
// }
// Contoh Branching Dengan Beberapa Kondisi
// void main() {
//   var minimarketStatus = "open";
//   var telur = "soldout";
//   var buah = "soldout";
//   if (minimarketStatus == "open") {
//     print("saya akan membeli telur dan buah");
//     if (telur == "soldout" || buah == "soldout") {
//       print("belanjaan saya tidak lengkap");
//     } else if (telur == "soldout") {
//       print("telur habis");
//     } else if (buah == "soldout") {
//       print("buah habis");
//     }
//   } else {
//     print("minimarket tutup, saya pulang lagi");
//   }
// }

// 3. Penerapan switch case dalam Dart
// void main() {
//   var buttonPushed = 2;
//   switch (buttonPushed) {
//     case 1:
//       {
//         print('matikan TV!');
//         break;
//       }
//     case 2:
//       {
//         print('turunkan volume TV!');
//         break;
//       }
//     case 3:
//       {
//         print('tingkatkan volume TV!');
//         break;
//       }
//     case 4:
//       {
//         print('matikan suara TV!');
//         break;
//       }
//     default:
//       {
//         print('Tidak terjadi apa-apa');
//       }
//   }
// }
