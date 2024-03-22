import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    this.height = 125,
    this.borderRadius = 20,
    required this.widht,
    required this.imgUrl,
    this.padding,
    this.margin,
    this.child,
  });

  final double widht;
  final double height;
  final String imgUrl;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(imgUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
