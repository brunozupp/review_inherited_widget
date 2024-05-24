import 'package:flutter/material.dart';

class UserModel extends InheritedWidget {

  final String name;
  final String imgAvatar;
  final String birthDate;

  UserModel({
    required this.name,
    required this.imgAvatar,
    required this.birthDate, 
    required super.child,
  });
  
  // Vai ser o método principal para notificar quando esse Widget for alterado por algum motivo
  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name ||
      imgAvatar != oldWidget.imgAvatar ||
      birthDate != oldWidget.birthDate;
  }

  static UserModel of(BuildContext context) {

    final userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(userModel != null, "UserModel not exists in context");

    return userModel!;
  }
}