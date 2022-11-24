// To parse this JSON data, do
//
//     final myWatchListItem = myWatchListItemFromJson(jsonString);

import 'dart:convert';
// import 'dart:ffi';

List<myWatchListItem> myWatchListItemFromJson(String str) => List<myWatchListItem>.from(json.decode(str).map((x) => myWatchListItem.fromJson(x)));

String myWatchListItemToJson(List<myWatchListItem> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class myWatchListItem {
    myWatchListItem({
        required this.id,
        required this.watched,
        required this.title,
        required this.rating,
        required this.release_date,
        required this.review,
    });

    int id;
    bool watched;
    String title;
    int rating;
    String release_date;
    String review;

    factory myWatchListItem.fromJson(Map<String, dynamic> json) => myWatchListItem(
        id: json["pk"],
        watched: json["fields"]["watched"],
        title: json["fields"]["title"],
        rating: json["fields"]["rating"],
        release_date: json["fields"]["release_date"],
        review: json["fields"]["review"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "watched": watched,
        "title": title,
        "rating": rating,
        "release_date": release_date,
        "review": review,
    };
}
