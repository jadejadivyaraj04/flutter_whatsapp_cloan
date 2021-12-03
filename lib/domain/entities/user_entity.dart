import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? name;
  final String? email;
  final String? phoneNumber;
  final bool? isOnline;
  final String? uid;
  final String? status;
  final String? profileUrl;

  UserEntity(
   { this.name,
    this.email,
    this.phoneNumber,
    this.isOnline,
    this.uid,
    this.status ="Hey there! I am Using WhatsApp Clone.",
    this.profileUrl,}
  );

  @override
  // TODO: implement props
  List<Object> get props => [
        name ?? "name",
        email ?? "email",
        phoneNumber ?? "phoneNumber",
        isOnline ?? false,
        uid ?? "uid",
        status ?? "status",
        profileUrl ?? "profileUrl",
      ];
}
