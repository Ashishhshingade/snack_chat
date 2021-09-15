import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:snackchat/models/chatroomCard.dart';
import 'package:snackchat/models/chatroomCard.dart';

class DatabaseService {
  //get the uid to create doc for particular user (to connect collection with user)
  final String uid;
  DatabaseService(this.uid);

  //collection refrences
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference chatroomsListCollection =
      FirebaseFirestore.instance.collection('chatroomsList');

  Future updateUsersData(String userName, String age, String emailId) async {
    return await usersCollection.doc(uid).set({
      'name': userName,
      'age': age,
      'emailId': emailId,
    });
  }

  //creating updatechatroom collc(to upload all chatroom list to firestore) so in future user will get to choose and keep the chatrooms he wants
  Future updateChatroomListCollection(
      String chatroomName, String assetImage) async {
    return await chatroomsListCollection
        .doc(chatroomName)
        .set({'chatroomName': chatroomName, 'Icon': assetImage});
  }

//uploading chatroomlist to chatroomcollc
  Future uploadChatroomList(chatroomList) async {
    for (int i = 0; i < chatroomList.length; i++) {
      await updateChatroomListCollection(
          chatroomList[i].chatroomName, chatroomList[i].chatroomIcon);
    }
  }

  //chatroom list from snapshot
  List<ChatroomCard> _chatroomCardFromFirebaseCollection(
      QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return ChatroomCard(
          chatroomName: doc['chatroomName'], chatroomIcon: doc['Icon']);
    }).toList();
  }

  //get users stream
  Stream<QuerySnapshot?> get usersStream {
    return usersCollection.snapshots();
  }

  //get chatroomlist stream
  Stream<List<ChatroomCard>> get chatroomsListStream {
    return chatroomsListCollection
        .snapshots()
        .map(_chatroomCardFromFirebaseCollection);
  }
}
