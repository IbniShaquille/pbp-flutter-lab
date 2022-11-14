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


# **Tugas 7**

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

---

---

# **Tugas 8**

## Jelaskan Perbedaan `Navigator.push` dan `Navigator.pushReplacement`.

Navigator.push digunakan untuk menambahkan route ke stack. Navigator.pushReplacement digunakan untuk mengganti route yang ada di stack. Perbedaan Navigator.push dan Navigator.pushReplacement adalah Navigator.push digunakan untuk menambahkan route ke stack, sedangkan Navigator.pushReplacement digunakan untuk mengganti route yang ada di stack. Navigator.pushReplacement akan menghapus semua route yang ada di stack kecuali route pertama.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Widget yang digunakan adalah MaterialApp, Scaffold, AppBar, Text, Center, Drawer, Form, ListTile, Column, dan FloatingActionButton.

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: `onPressed`).

Jenis-jenis event yang ada pada flutter, yaitu `onPressed`, `onTap`, `onChanged`, `onSubmitted`, `onLongPress`, `onDoubleTap`, `onTapDown`, `onTapUp`, `onTapCancel`, `onScaleStart`, `onScaleUpdate`, `onScaleEnd`, `onHorizontalDragStart`, `onHorizontalDragUpdate`, `onHorizontalDragEnd`, `onVerticalDragStart`, `onVerticalDragUpdate`, `onVerticalDragEnd`, `onPanStart`, `onPanUpdate`, `onPanEnd`, `onPanCancel`, `onForcePressStart`, `onForcePressPeak`, `onForcePressUpdate`, `onForcePressEnd`, `onNotification`, `onPointerDown`, `onPointerMove`, `onPointerUp`, `onPointerCancel`, `onPointerSignal`, `onSemanticsTap`, `onSemanticsLongPress`, `onSemanticsScrollLeft`, `onSemanticsScrollRight`, `onSemanticsScrollUp`, `onSemanticsScrollDown`, `onSemanticsIncrease`, `onSemanticsDecrease`, `onSemanticsCustomAction`, `onDismissed`, `onResize`, `onReorder`, `onRefresh`, `onLoading`, `onError`, `onEditingComplete`.

## Jelaskan bagaimana cara kerja `Navigator` dalam "mengganti" halaman dari aplikasi Flutter.

Cara kerja dari Navigator adalah dengan menambahkan route ke stack. Navigator akan menambahkan route ke stack jika fungsi `Navigator.push` dipanggil. Navigator akan mengganti route yang ada di stack jika fungsi `Navigator.pushReplacement` dipanggil. Navigator akan menghapus semua route yang ada di stack kecuali route pertama jika fungsi `Navigator.pushReplacement` dipanggil. Terdapat dua cara untuk mengatur stack of route, yaitu declarative dan imperative. Cara declarative adalah dengan menggunakan widget Navigator. Cara imperative adalah dengan menggunakan fungsi `Navigator.push` dan `Navigator.pushReplacement`.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Dalam aplikasi ini, saya menambahkan drawer dan routing pages kedua halaman dengan `Navigator.pushReplacement`. pada halaman pertama, saya mengirim data dengan membuat kelas Budget dan menyimpannya dalam list agar dapat send data ke halaman kedua. Pada halaman kedua, saya menerima data dengan membuat kelas Budget dan menampilkan data yang diterima. 