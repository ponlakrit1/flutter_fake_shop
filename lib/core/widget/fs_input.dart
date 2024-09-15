import 'package:flutter/material.dart';

class FsInput extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final bool? obscureText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String? errorText;
  final OutlineInputBorder? border;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const FsInput({
    super.key,
    required this.controller,
    this.hintText,
    this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
    this.errorText,
    this.border,
    this.onChanged,
    this.validator,
  });

  @override
  State<FsInput> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<FsInput> {
  late bool visibility;

  @override
  void initState() {
    super.initState();

    visibility = widget.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 0.0,
      ),
      child: TextFormField(
        controller: widget.controller,
        obscureText: visibility,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          border: widget.border,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 8.0,
          ),
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          prefixIconColor: Colors.grey,
          suffixIcon: widget.obscureText != null
              ? _buildPasswordSuffixIcon()
              : widget.suffixIcon,
          errorText: widget.errorText,
        ),
        onChanged: widget.onChanged,
        validator: widget.validator,
      ),
    );
  }

  Widget _buildPasswordSuffixIcon() {
    return IconButton(
      icon: visibility
          ? const Icon(
              Icons.visibility_off_outlined,
              color: Colors.grey,
            )
          : const Icon(
              Icons.visibility_outlined,
              color: Colors.grey,
            ),
      onPressed: () {
        setState(() {
          visibility = !visibility;
        });
      },
    );
  }
}
