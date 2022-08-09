// ignore_for_file: unnecessary_null_comparison, unnecessary_string_interpolations

import 'package:cloud_firestore/cloud_firestore.dart';

class ItemModel {
  String title;
  String shortInfo;
  Timestamp publishedDate;
  String thumbnailUrl;
  String longDescription;
  String status;
  int ?price;

  ItemModel(
      {required this.title,
        required this.shortInfo,
        required this.publishedDate,
        required this.thumbnailUrl,
        required this.longDescription,
        required this.status,
        });

  ItemModel?fromJson(Map<String, dynamic> json) {
    title = json['title'];
    shortInfo = json['shortInfo'];
    publishedDate = json['publishedDate'];
    thumbnailUrl = json['thumbnailUrl'];
    longDescription = json['longDescription'];
    status = json['status'];
    price = json['price'];
    return null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['title'] = title;
    data['shortInfo'] = shortInfo;
    data['price'] = price;
    if (publishedDate != null) {
      data['publishedDate'] = publishedDate;
    }
    data['thumbnailUrl'] = thumbnailUrl;
    data['longDescription'] = longDescription;
    data['status'] = status;
    return data;
  }
}

class PublishedDate {
  String date;

  PublishedDate({required this.date});

  PublishedDate?fromJson(Map<String, dynamic> json) {
   date = json['$date'];
   return null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['$date'] = date;
    return data;
  }
}
