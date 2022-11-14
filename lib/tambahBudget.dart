import 'package:flutter/material.dart';
import 'dataBudget.dart';

// buat kelas budget
class Budget {
  String judul;
  String nominal;
  String jenis;

  Budget(this.judul, this.nominal, this.jenis);

  get getJudul => this.judul;
  get getNominal => this.nominal;
  get getJenis => this.jenis;
}

class tambahBudgetPage extends StatefulWidget {
  const tambahBudgetPage({super.key});

  @override
  State<tambahBudgetPage> createState() => _tambahBudgetPageState();
}

class _tambahBudgetPageState extends State<tambahBudgetPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  String _nominal = "";
  String jenisBudget = "Pilih Jenis";
  List<String> listJenisBudget = ["Pilih Jenis", "Pemasukan", "Pengeluaran"];
  static List<Budget> listBudget = [];

  void _tambahBudget() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        // print(_judul);
        Budget budget = Budget(_judul, _nominal, jenisBudget);
        // print(budget.getJudul);
        // print(budget.getNominal);
        // print(budget.getJenis);
        listBudget.add(budget);
        // print(listBudget[0].judul);
        // print(listBudget[0].nominal);
        // print(listBudget[0].jenis);
        // print(listBudget.length);
        // print(listBudget.toString());
      });
      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 15,
            child: Container(
              child: ListView(
                padding: const EdgeInsets.all(20),
                shrinkWrap: true,
                children: <Widget>[
                  Center(child: const Text('Data berhasil tersimpan !')),
                  SizedBox(height: 20),
                  // TODO: Munculkan informasi yang didapat dari form
                  Text('Judul: ' + _judul),
                  Text('Nominal: ' + _nominal),
                  Text('Jenis: ' + jenisBudget),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() {
                        _judul = "";
                        _nominal = "";
                        jenisBudget = "Pilih Jenis";
                        print(_judul);
                      });
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const tambahBudgetPage()),
                      );
                    },
                    child: Text('Kembali'),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Budget'),
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
                  MaterialPageRoute(
                      builder: (context) =>  dataBudgetPage(
                          myBudget: listBudget,
                      )),
                );
              },
            ),
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "PBP > SDA",
                      labelText: "Judul",
                      // Menambahkan icon agar lebih intuitif
                      icon: const Icon(Icons.people),
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "100000",
                      labelText: "Nominal",
                      // Menambahkan icon agar lebih intuitif
                      icon: const Icon(Icons.attach_money),
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _nominal = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _nominal = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Nominal tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          labelText: "Pilih Jenis",
                        ),
                        value: jenisBudget,
                        items: listJenisBudget.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            jenisBudget = value!;
                          });
                        },
                        validator: (String? value) {
                          if (value == null ||
                              value.isEmpty ||
                              value == "Pilih Jenis") {
                            return 'Jenis tidak boleh kosong!';
                          }
                          return null;
                        },
                      ),
                    ),
                    // ],
                    // contentPadding: const EdgeInsets.only(right: 110),
                    // trailing: DropdownButton(
                    //   value: jenisBudget,
                    //   icon: const Icon(Icons.keyboard_arrow_down),
                    //   items: listJenisBudget.map((String items) {
                    //     return DropdownMenuItem(
                    //       value: items,
                    //       child: Text(items),
                    //     );
                    //   }).toList(),
                    //   onChanged: (String? newValue) {
                    //     setState(() {
                    //       jenisBudget = newValue!;
                    //     });
                    //   },
                    //   validator: (String? newValue) {
                    //     if (newValue == null || newValue.isEmpty) {
                    //       return 'Jenis tidak boleh kosong!';
                    //     }
                    //     return null;
                    //   },
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.only(left: 30),
        child: TextButton(
          child: Text(
            'Simpan',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            padding: MaterialStateProperty.all(EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10)),
          ),
          onPressed: _tambahBudget,
        ),
      ),
    );
  }
}



// if (widget.myBudget == null)
                      //   Padding(
                      //     padding: const EdgeInsets.all(20.0),
                      //     child: Center(
                      //       child: Text(
                      //         'Tidak ada data budget',
                      //         style: TextStyle(
                      //           fontSize: 30,
                      //           fontWeight: FontWeight.bold,
                      //         ),
                      //       ),
                      //     ),
                      //   ),