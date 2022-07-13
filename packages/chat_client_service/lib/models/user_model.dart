import 'package:cloud_firestore/cloud_firestore.dart';

///
class User {
  /// CONSTRUCTOR
  User({this.id, this.picture, this.name, this.email});

  /// Tries to convert the data from the DB to a [User].
  User.fromJson(Map<String, dynamic> json) {
    picture = json['picture'] as String?;
    id = json['id'] as String;
    name = json['name'] as String;
    email = json['email'] as String;
  }

  /// Converts the [User] to a [Map]
  factory User.fromDocument(DocumentSnapshot snapshot) {
    String? name = '';
    String? picture = '';

    name = snapshot.get('name') as String;
    picture = snapshot.get('picture') as String?;

    return User(
      id: snapshot.id,
      picture: picture,
      name: name,
    );
  }

  /// Identifier of the User
  String? id;

  /// Name of the User
  String? name;

  /// Email of the User
  String? email;

  /// Profile picture of the User
  String? picture;

  /// Converts the [User] to a [Map]
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'name': name,
      'picture': picture,
    };
  }
}
