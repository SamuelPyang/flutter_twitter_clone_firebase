// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String id;
  String name;
  String profilePicture;
  String email;
  String bio;
  String coverImage;
  UserModel({
    required this.id,
    required this.name,
    required this.profilePicture,
    required this.email,
    required this.bio,
    required this.coverImage,
  });

  // UserModel(
  //     {this.id,
  //     this.name,
  //     this.profilePicture,
  //     this.email,
  //     this.bio,
  //     this.coverImage});

  factory UserModel.fromDoc(DocumentSnapshot doc) {
    return UserModel(
      id: doc.id,
      name: doc['name'],
      email: doc['email'],
      profilePicture: doc['profilePicture'],
      bio: doc['bio'],
      coverImage: doc['coverImage'],
    );
  }
}
