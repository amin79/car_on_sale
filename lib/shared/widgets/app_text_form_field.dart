import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    this.controller,
    this.labelText,
    this.prefixIcon,
    this.hintText = "",
    this.validator,
    this.maxLines = 1,
    this.minLines = 1,
    this.maxLength,
    this.autocorrect = false,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.sentences,
    this.obscureText = false,
    this.enableSuggestions = true,
    this.prefix,
    this.textStyle,
    this.expands = false,
    this.maxWidth,
    this.enabled = true,
    this.disabledColor,
    this.textInputAction,
    this.onFieldSubmitted,
    this.onTap,
    this.suffixIcon,
    this.inputFormatters,
  });

  final TextEditingController? controller;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final bool autocorrect;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final bool obscureText;
  final bool enableSuggestions;
  final String? Function(String?)? validator;
  final Widget? prefix;
  final TextStyle? textStyle;
  final bool expands;
  final double? maxWidth;
  final bool enabled;
  final Color? disabledColor;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final Function()? onTap;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Focus(
      child: TextFormField(
        maxLength: widget.maxLength,
        autocorrect: widget.autocorrect,
        controller: widget.controller,
        enableSuggestions: widget.enableSuggestions,
        obscureText: widget.obscureText,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        expands: widget.expands,
        enabled: widget.enabled,
        validator: widget.validator,
        textCapitalization: widget.textCapitalization,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        style: widget.textStyle,
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: widget.labelText,
          prefixIcon: widget.prefixIcon,
          prefix: widget.prefix,
          suffixIcon: widget.suffixIcon,
          errorMaxLines: 2,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          constraints: widget.maxWidth != null
              ? const BoxConstraints(maxWidth: 200.0)
              : null,
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
        ),
        onTap: widget.onTap,
        inputFormatters: widget.inputFormatters,
      ),
    );
  }
}
