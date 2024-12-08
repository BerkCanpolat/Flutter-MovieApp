import 'package:flutter/material.dart';
/// Project general padding items
final class ProjectPadding extends EdgeInsets{
  const ProjectPadding._() : super.all(0);

  /// All Padding

  /// [ProjectPadding.allSmall] is 5
  const ProjectPadding.allSmall() : super.all(5);


  /// Only Padding
  
  /// [ProjectPadding.onlyLeftBottomTextSmall] is left5, bottom 5
  const ProjectPadding.onlyLeftBottomTextSmall() : super.only(left: 5, bottom: 5);

  /// [ProjectPadding.onlyLeftSmall] is 8
  const ProjectPadding.onlyLeftSmall() : super.only(left: 8);

  /// [ProjectPadding.onlyTopAndBottom] is top 10 , bottom 10
  const ProjectPadding.onlyTopAndBottom() : super.only(top: 10, bottom: 10);

  /// [ProjectPadding.onlyTop] is top 22
  const ProjectPadding.onlyTop() : super.only(top: 22);
}