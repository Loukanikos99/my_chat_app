import 'package:cloud_firestore/cloud_firestore.dart';

///
class User {
  /// CONSTRUCTOR
  User({this.id, this.picture, this.name, this.email});

  /// Tries to convert the data from the DB to a [User].
  User.fromJson(Map<String, dynamic> json) {
    try {
      picture = json['picture'] as String?;
      id = json['id'] as String;
      name = json['name'] as String;
      email = json['email'] as String;
    } catch (e) {}
  }

  /// Converts the [User] to a [Map]
  factory User.fromDocument(DocumentSnapshot snapshot) {
    String? name = '';
    String? picture = '';

    try {
      name = snapshot.get('name') as String;
      picture = snapshot.get('picture') as String?;
    } catch (e) {}
    return User(
      id: snapshot.id,
      picture: picture,
      name: name,
    );
  }

  String? id;
  String? name;
  String? email;
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
