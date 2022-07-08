import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget errorContainer() {
  return Container(
    clipBehavior: Clip.hardEdge,
    child: SvgPicture.asset(
      'assets/icons/tabbar/UserCircle.svg',
      height: 200,
      width: 200,
    ),
  );
}

Widget errorContainerListTile() {
  return SvgPicture.asset(
    'assets/icons/tabbar/UserCircle.svg',
    height: 70,
    width: 70,
  );
}
