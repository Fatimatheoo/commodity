import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commodity/model/Notificationmodel.dart';

DeleteNotifications(List<NotificationModel> selectedones){
  //List<NotificationModel> selectedones = [];
    for(int i = 0; i < selectedones.length; i++ ) {
      FirebaseFirestore.instance.collection('Notifications').doc(selectedones[i].id).delete();
    }
  }