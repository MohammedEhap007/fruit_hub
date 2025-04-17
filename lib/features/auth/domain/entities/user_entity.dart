class UserEntity {
  final String name;
  final String email;
  final String uId;

  UserEntity({
    required this.name,
    required this.email,
    required this.uId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'uId': uId,
    };
  }
}
