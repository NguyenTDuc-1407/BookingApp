import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserResponse {
  String? sId;
  String? fullName;
  String? email;
  String? password;
  String? phone;
  List<String>? transaction;
  String? role;
  String? loginType;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? token;
  UserResponse({
    this.sId,
    this.fullName,
    this.email,
    this.password,
    this.phone,
    this.transaction,
    this.role,
    this.loginType,
    this.createdAt,
    this.updatedAt,
    this.iV,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '_id': sId,
      'fullName': fullName,
      'email': email,
      'password': password,
      'phone': phone,
      'transaction': transaction,
      'role': role,
      'loginType': loginType,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'iV': iV,
      'token': token,
    };
  }

  factory UserResponse.fromMap(Map<String, dynamic> map) {
    return UserResponse(
      sId: map['_id'] != null ? map['_id'] as String : null,
      fullName: map['fullName'] != null ? map['fullName'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      transaction: map['transaction'] != null
          ? List<String>.from((map['transaction'] as List<String>))
          : null,
      role: map['role'] != null ? map['role'] as String : null,
      loginType: map['loginType'] != null ? map['loginType'] as String : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
      updatedAt: map['updatedAt'] != null ? map['updatedAt'] as String : null,
      iV: map['iV'] != null ? map['iV'] as int : null,
      token: map['token'] != null ? map['token'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserResponse.fromJson(String source) =>
      UserResponse.fromMap(json.decode(source) as Map<String, dynamic>);
}
