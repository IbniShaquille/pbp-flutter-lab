import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'tambahBudget.dart';
import 'dataBudget.dart';
import 'myWatchList.dart';
import '../main.dart';

class detailsWatchListPage extends StatefulWidget {
  String title;
  bool watched;
  int id;
  int rating;
  String release_date;
  String review;
  detailsWatchListPage(
      {super.key,
      required this.title,
      required this.watched,
      required this.id,
      required this.rating,
      required this.release_date,
      required this.review});

  @override
  State<detailsWatchListPage> createState() => detailsWatchListPageState();
}

class detailsWatchListPageState extends State<detailsWatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.watched.toString() == 'true'
                  ? 'Status: Watched'
                  : 'Status: Not Watched',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // Text(widget.watched.toString()),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Rating: ' + widget.rating.toString() + '/5',
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Release Date: ' + widget.release_date,
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Review: ' + widget.review,
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => myWatchListPage()),
          );
        },
        child: const Icon(Icons.arrow_back),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
