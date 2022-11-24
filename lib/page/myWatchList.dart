import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'tambahBudget.dart';
import 'dataBudget.dart';
import 'detailsWatchList.dart';
import '../main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/watch_list.dart';

class myWatchListPage extends StatefulWidget {
  const myWatchListPage({Key? key}) : super(key: key);

  @override
  State<myWatchListPage> createState() => _myWatchListPageState();
}

class _myWatchListPageState extends State<myWatchListPage> {
  Future<List<myWatchListItem>> fetchmyWatchListItem() async {
    var url = Uri.parse('https://bynpbp.herokuapp.com/mywatchlist/json/');
    // print(url);
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );
    // print(response.body);

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object myWatchListItem
    List<myWatchListItem> listmyWatchListItem = [];
    for (var d in data) {
      if (d != null) {
        // print("sesuatu xxxxx");
        listmyWatchListItem.add(myWatchListItem.fromJson(d));
        // print("sesuatu xxxxx");
      }
    }

    return listmyWatchListItem;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
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
            ListTile(
              title: const Text('mywatchlist'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const myWatchListPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: FutureBuilder(
          future: fetchmyWatchListItem(),
          builder: (context, AsyncSnapshot snapshot) {
            // if (snapshot.data == null) {
            //   return const Center(child: CircularProgressIndicator());
            //   } else {
            // print(snapshot.data);
            if (!snapshot.hasData) {
              // print("tes");
              return Column(
                children: const [
                  Text(
                    "Tidak ada watchlist :(",
                    style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 2.0)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          snapshot.data[index].title,
                          style: const TextStyle(
                              color: Color(0xff59A5D8), fontSize: 20),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => detailsWatchListPage(
                              title : snapshot.data[index].title,
                              watched : snapshot.data[index].watched,
                              id : snapshot.data[index].id,
                              rating: snapshot.data[index].rating,
                              review: snapshot.data[index].review,
                              release_date: snapshot.data[index].release_date,
                            )),
                            );
                        },
                      )
                      // Text(
                      //   "${snapshot.data![index].title}",
                      //   style: const TextStyle(
                      //     fontSize: 18.0,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      // const SizedBox(height: 10),
                    ],
                  ),
                ),
              );
            }
          }
          // }
          ),
    );
  }
}




                  