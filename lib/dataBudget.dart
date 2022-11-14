import 'package:flutter/material.dart';
import 'tambahBudget.dart';
import 'main.dart';

class dataBudgetPage extends StatefulWidget {
  var myBudget;
  dataBudgetPage({super.key, this.myBudget});

  @override
  State<dataBudgetPage> createState() => _dataBudgetPageState();
}

class _dataBudgetPageState extends State<dataBudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const tambahBudgetPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => dataBudgetPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.myBudget == null ||
              widget.myBudget.isEmpty ||
              widget.myBudget.length == 0)
            Center(
              child: Column(
                children: [
                  const Text(
                    "Tidak ada data budget",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          // const Center(
          //   child: Text(
          //     "Tidak ada data budget",
          //     style: TextStyle(
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          if (widget.myBudget != null &&
              widget.myBudget.isNotEmpty &&
              widget.myBudget.length != 0)
            Expanded(
              child: ListView.builder(
                itemCount: widget.myBudget.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(widget.myBudget[index]
                          .judul),
                      subtitle: Text(widget
                          .myBudget[index].nominal),
                      trailing: Column(
                        children: [
                          Text(widget.myBudget[index].jenis),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          // ],
          //   if (widget.myBudget != null)
          //     Expanded(
          //       child: ListView.builder(
          //         itemCount: widget.myBudget.length,
          //         itemBuilder: (context, index) {
          //           return Card(
          //             child: ListTile(
          //               title: Text(widget.myBudget[index]
          //                   .judul), // ini judul isinya malah nominal
          //               subtitle: Text(widget
          //                   .myBudget[index].nominal), // ini nominal isinya gaada
          //               trailing: Column(
          //                 children: [
          //                   Text(widget.myBudget[index].jenis),
          //                 ],
          //               ),
          //             ),
          //           );
          //         },
          //       ),
          //     ),

          // for (var i = 0; i < widget.myBudget.length; i++)
          //   Padding(
          //     padding: const EdgeInsets.all(20.0),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'Nama Budget: ',
          //           style: TextStyle(
          //             fontSize: 20,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //         Text(
          //           'Jumlah Budget: ',
          //           style: TextStyle(
          //             fontSize: 20,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //         Text(
          //           'Jenis Budget: ',
          //           style: TextStyle(
          //             fontSize: 20,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),

          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Center(
          //     child: Text(
          //       'Data Budget',
          //       style: TextStyle(
          //         fontSize: 30,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),

          // Expanded(
          //   child: ListView.builder(
          //     itemCount: widget.myBudget.length,
          //     itemBuilder: (context, index) {
          //       return Card(
          //         child: ListTile(
          //           title: Text(widget.myBudget[index]
          //               .judul), // ini judul isinya malah nominal
          //           subtitle: Text(widget.myBudget[index]
          //               .nominal), // ini nominal isinya gaada
          //           trailing: Column(
          //             children: [
          //               Text(widget.myBudget[index].jenis),
          //             ],
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
