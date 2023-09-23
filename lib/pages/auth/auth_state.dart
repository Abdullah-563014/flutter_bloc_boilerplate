import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class AuthState extends Equatable{
  bool isAuthenticated;

  AuthState({required this.isAuthenticated});




  @override
  List<Object?> get props => [
    isAuthenticated
  ];



  Map<String, dynamic> toMap() {
    return {
      'isAuthenticated': this.isAuthenticated,
    };
  }

  factory AuthState.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return AuthState(
      isAuthenticated: map['isAuthenticated'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthState.fromJson(String source) => AuthState.fromMap(json.decode(source));


}