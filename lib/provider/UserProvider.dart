import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String _username = '';

  String get username => _username;

  Future<String> fetchUsername() async {
    final userdoc = await FirebaseFirestore.instance.collection('Users').doc(
        FirebaseAuth.instance.currentUser!.uid).get();
    return _username = userdoc.data()!['userEmail'];
  }
}