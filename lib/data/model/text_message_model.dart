import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_platform_interface/src/timestamp.dart';
import 'package:flutter_whatsapp_cloan/domain/entities/text_message_entity.dart';

class TextMessageModel extends TextMessageEntity {
  TextMessageModel({
    String? senderName,
    String? sederUID,
    String? recipientName,
    String? recipientUID,
    String? messageType,
    String? message,
    String? messageId,
    Timestamp? time,
  }) : super(
          senderName: senderName,
          sederUID: sederUID,
          recipientName: recipientName,
          recipientUID: recipientUID,
          messsageType: messageType,
          message: message,
          messageId: messageId,
          time: time,
        );

  factory TextMessageModel.fromSnapShot(DocumentSnapshot snapshot) {
    Map? data = snapshot.data() as Map?;
    return TextMessageModel(
      senderName: data!['senderName'],
      sederUID: data['sederUID'],
      recipientName: data['recipientName'],
      recipientUID: data['recipientUID'],
      messageType: data['messageType'],
      message: data['message'],
      messageId: data['messageId'],
      time:data['time'],
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "senderName": senderName,
      "sederUID": sederUID,
      "recipientName": recipientName,
      "recipientUID": recipientUID,
      "messageType": messsageType,
      "message": message,
      "messageId": messageId,
      "time": time,
    };
  }
}
