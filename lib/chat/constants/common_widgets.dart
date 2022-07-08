import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget errorContainer() {
  return Container(
    clipBehavior: Clip.hardEdge,
    child: SvgPicture.asset(
      'assets/usercircle.svg',
      height: 200,
      width: 200,
    ),
  );
}

Widget errorContainerListTile() {
  return SvgPicture.asset(
    'assets/usercircle.svg',
    height: 70,
    width: 70,
  );
}
