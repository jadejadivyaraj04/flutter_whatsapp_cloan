import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_whatsapp_cloan/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    String? name,
    String? email,
    String? phoneNumber,
    bool? isOnline,
    String? uid,
    String? status,
    String? profileUrl,
  }) : super(
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          isOnline: isOnline,
          uid: uid,
          status: status,
          profileUrl: profileUrl,
        );

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    Map? data = snapshot.data() as Map?;
    return UserModel(
      name: data!['name'],
      email: data['email'],
      phoneNumber: data['phoneNumber'],
      uid: data['uid'],
      isOnline: data['isOnline'],
      profileUrl: data['profileUrl'],
      status: data['status'],
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "name": name,
      "email": email,
      "phoneNumber": phoneNumber,
      "uid": uid,
      "isOnline": isOnline,
      "profileUrl": profileUrl,
      "status": status,
    };
  }
}
