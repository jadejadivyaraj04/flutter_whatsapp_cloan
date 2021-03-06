import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_platform_interface/src/timestamp.dart';
import 'package:flutter_whatsapp_cloan/domain/entities/my_chat_entity.dart';

class MyChatModel extends MyChatEntity {
  MyChatModel({
    String? senderName,
    String? senderUID,
    String? recipientName,
    String? recipientUID,
    String? channelId,
    String? profileURL,
    String? recipientPhoneNumber,
    String? senderPhoneNumber,
    String? recentTextMessage,
    bool? isRead,
    bool? isArchived,
    Timestamp? time,
  }) : super(
          senderName: senderName,
          senderUID: senderUID,
          recipientName: recipientName,
          recipientUID: recipientUID,
          channelId: channelId,
          profileURL: profileURL,
          recipientPhoneNumber: recipientPhoneNumber,
          senderPhoneNumber: senderPhoneNumber,
          recentTextMessage: recentTextMessage,
          isRead: isRead,
          isArchived: isArchived,
          time: time,
        );

  factory MyChatModel.fromSnapShot(DocumentSnapshot snapshot) {
    Map? data = snapshot.data() as Map?;
    return MyChatModel(
      senderName: data!['senderName'],
      senderUID: data['senderUID'],
      senderPhoneNumber: data['senderPhoneNumber'],
      recipientName: data['recipientName'],
      recipientUID: data['recipientUID'],
      recipientPhoneNumber: data['recipientPhoneNumber'],
      channelId: data['channelId'],
      time: data['time'],
      isArchived: data['isArchived'],
      isRead: data['isRead'],
      recentTextMessage: data['recentTextMessage'],
      profileURL: data['profileURL'],
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "senderName": senderName,
      "senderUID": senderUID,
      "recipientName": recipientName,
      "recipientUID": recipientUID,
      "channelId": channelId,
      "profileURL": profileURL,
      "recipientPhoneNumber": recipientPhoneNumber,
      "senderPhoneNumber": senderPhoneNumber,
      "recentTextMessage": recentTextMessage,
      "isRead": isRead,
      "isArchived": isArchived,
      "time": time,
    };
  }
}
