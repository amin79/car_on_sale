import 'package:flutter/material.dart';

class TextBodyLarge extends StatelessWidget {
  const TextBodyLarge({
    super.key,
    required this.text,
    this.maxLines,
    this.isBold = false,
    this.color,
    this.overflow,
  });

  final String text;
  final int? maxLines;
  final bool isBold;
  final Color? color;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: isBold == true ? FontWeight.bold : null,
            color: color,
          ),
    );
  }
}
