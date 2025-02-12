import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Board {
  String key = "";
  String subject = "";
  String body = "";

  Board(this.subject, this.body);

  Board.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key!,
        subject = (snapshot.value as Map<String, dynamic>?)?["subject"] ?? "",
        body = (snapshot.value as Map<String, dynamic>?)?["body"] ?? "";

  toJson() {
    return {
      "subject": subject,
      "body": body,
    };
  }
}
