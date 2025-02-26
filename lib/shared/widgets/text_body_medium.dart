import 'package:flutter/material.dart';

class TextBodyMedium extends StatelessWidget {
  const TextBodyMedium({
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
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontWeight: isBold == true ? FontWeight.bold : null,
            color: color,
          ),
    );
  }
}
