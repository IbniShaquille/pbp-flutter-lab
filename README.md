# counter_7

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless Widget adalah widget yang tidak memiliki state, artinya widget tersebut tidak memiliki perubahan data. Stateful Widget adalah widget yang memiliki state, artinya widget tersebut memiliki perubahan data. Perbedaan dari keduanya adalah stateless widget tidak memiliki perubahan data, sedangkan stateful widget memiliki perubahan data.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

widget yang digunakan adalah MaterialApp, Scaffold, AppBar, Text, Center, Column, Row, dan FloatingActionButton.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

setState() digunakan untuk mengubah state dari widget. Variabel yang terdampak adalah variabel yang berada di dalam state. Variabel yang berada di dalam state akan berubah jika fungsi setState() dipanggil. Variabel yang berada di luar state tidak akan berubah jika fungsi setState() dipanggil.

## Jelaskan perbedaan antara const dengan final.

const digunakan untuk membuat variabel konstan. final digunakan untuk membuat variabel yang hanya bisa diinisialisasi sekali. Perbedaan antara const dengan final adalah const digunakan untuk membuat variabel konstan, sedangkan final digunakan untuk membuat variabel yang hanya bisa diinisialisasi sekali.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Dalam aplikasi ini, saya menggunakan stateful widget untuk membuat aplikasi counter. Pada stateful widget, saya membuat variabel counter untuk menyimpan nilai counter. Pada stateful widget, saya membuat fungsi incrementCounter untuk menambahkan nilai counter. Pada stateful widget, saya membuat fungsi decrementCounter untuk mengurangi nilai counter. Pada stateful widget, saya membuat fungsi resetCounter untuk mengatur ulang nilai counter menjadi 0. Pada stateful widget, saya membuat fungsi build untuk menampilkan widget yang akan ditampilkan pada aplikasi.