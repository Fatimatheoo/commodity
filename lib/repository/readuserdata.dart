import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future SignUpUser(
    String username,
    String useremail,
    ) async{
  User? userid = FirebaseAuth.instance.currentUser;

  try {
    await FirebaseFirestore.instance.collection("Users")
        .doc(userid!.uid)
        .set({
      'userName': username,
      'userEmail': useremail,
      'CreatedAt': DateTime.now(),
      'UserId': userid.uid
    }).then((value)  {
      FirebaseAuth.instance.signOut();
    });
  }on FirebaseAuthException catch (e){
    print("Error $e");
  }
}