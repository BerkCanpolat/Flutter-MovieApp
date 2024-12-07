import 'package:flutter/material.dart';
/// Project general padding items
final class ProjectPadding extends EdgeInsets{
  const ProjectPadding._() : super.all(0);

  /// All Padding

  /// [ProjectPadding.allSmall] is 5
  const ProjectPadding.allSmall() : super.all(5);


  /// Only Padding
  
  /// [ProjectPadding.onlyLeftSmall] is 8
  const ProjectPadding.onlyLeftSmall() : super.only(left: 8);
}