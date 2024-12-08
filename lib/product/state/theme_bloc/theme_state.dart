import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

final class ThemeState extends Equatable{
  final ThemeData themeData;

  const ThemeState({required this.themeData});

  ThemeState copyWith({
    ThemeData? themeData,
  }) {
    return ThemeState(themeData: themeData ?? this.themeData);
  }
  @override
  // TODO: implement props
  List<Object?> get props => [themeData];
}