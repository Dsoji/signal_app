import 'package:flutter/material.dart';

class ReUsedFields extends StatelessWidget {
  const ReUsedFields(
      {Key? key,
      this.icon,
      this.onChanged,
      this.isSuffixIcon,
      this.height,
      this.hintText,
      @required this.textEditingController})
      : super(key: key);
  final String? hintText;
  final double? height;
  final bool? isSuffixIcon;
  final Widget? icon;
  final TextEditingController? textEditingController;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: height!,
        child: TextField(
          onChanged: onChanged,
          controller: textEditingController,
          decoration: InputDecoration(
            suffixIcon: isSuffixIcon! ? icon! : null,
            hintText: hintText!,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
