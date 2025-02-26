import 'package:flutter/material.dart';

class TextTitleSmall extends StatelessWidget {
  const TextTitleSmall({
    super.key,
    required this.text,
    this.maxLines,
    this.isBold = true,
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
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontWeight: isBold == true ? FontWeight.bold : null,
            color: color,
          ),
    );
  }
}
