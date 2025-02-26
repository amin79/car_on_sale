import 'package:flutter/material.dart';

class TextBodySmall extends StatelessWidget {
  const TextBodySmall({
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
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontWeight: isBold == true ? FontWeight.bold : null,
            color: color,
            overflow: overflow ?? TextOverflow.ellipsis,
          ),
    );
  }
}
