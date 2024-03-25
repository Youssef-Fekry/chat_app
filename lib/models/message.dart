import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final String message;
  final String? id;

  MessageModel(this.message, this.id);

  factory MessageModel.fromJson(Map<String, dynamic> jsonData) {
    return MessageModel(jsonData['message'] ?? '',
        jsonData['id']); // Provide a default value if 'message' is null
  }

  factory MessageModel.fromDocumentSnapshot(DocumentSnapshot snapshot) {
    if (snapshot.exists && snapshot.data() != null) {
      final jsonData = snapshot.data() as Map<String, dynamic>;
      return MessageModel.fromJson(jsonData);
    } else {
      throw Exception("Invalid or null document snapshot");
    }
  }
}
