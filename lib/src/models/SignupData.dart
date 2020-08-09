import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

class SignupData {
  final String email;
  final String password;
  final String firstName;
  final String lastName;
  final DateTime dob;

  SignupData({
    @required this.email,
    @required this.password,
    @required this.firstName,
    @required this.lastName,
    @required this.dob,
  });

  @override
  String toString() {
    return '$runtimeType($email, $password, $firstName, $lastName, $dob)';
  }

  bool operator ==(Object other) {
    if (other is SignupData) {
      return email == other.email && password == other.password;
    }
    return false;
  }

  int get hashCode => hash4(email, password, firstName, dob);
}
