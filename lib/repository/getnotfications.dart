import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commodity/model/Notificationmodel.dart';

Future<List<NotificationModel>> getNotificationData() async {
  List<NotificationModel> notification = [];
  return await FirebaseFirestore.instance.collection('Notifications').get().then((value) {
    for(int i = 0; i < value.docs.length; i++ ){
      notification.add(NotificationModel(
          text: value.docs[i].data()['text'],
          image: value.docs[i].data()['image'],
          date: value.docs[i].data()['time']));
    }
    return notification;
  });
}