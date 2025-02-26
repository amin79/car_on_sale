import 'package:flutter/material.dart';

class TextTitleMedium extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final int? maxLines;

  const TextTitleMedium({
    super.key,
    this.color,
    required this.text,
    this.fontSize,
    this.fontFamily,
    this.fontWeight = FontWeight.bold,
    this.maxLines = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: color,
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            overflow: TextOverflow.ellipsis,
          ),
    );
  }
}
