// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(MyTheme.creamcolor)
        .make()
        .p16()
        .w48(context);
  }
}
