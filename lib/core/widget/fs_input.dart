import 'package:flutter/material.dart';

class FsInput extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Icon? prefixIcon;
  final String? errorText;
  final Function(String) onChanged;
  final String? Function(String?) validator;

  const FsInput({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.prefixIcon,
    this.errorText,
    required this.onChanged,
    required this.validator,
  });

  @override
  State<FsInput> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<FsInput> {
  late bool visibility;

  @override
  void initState() {
    super.initState();

    visibility = widget.obscureText;
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
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 8.0,
          ),
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          prefixIconColor: Colors.grey,
          suffixIcon: widget.obscureText
              ? IconButton(
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
                )
              : null,
          errorText: widget.errorText,
        ),
        onChanged: widget.onChanged,
        validator: widget.validator,
      ),
    );
  }
}
