import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final double maxheight;
  VoidCallback? onPressed;
  final IconData? icon;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;

   CustomTextFormField({
    required this.labelText,
    required this.controller,
    this.validator,
    this.onPressed,
    this.icon,
    this.maxheight = 50,
    Key? key,
  }) : super(key: key);

  @override
  CustomTextFormFieldState createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      scrollPadding: const EdgeInsets.all(10),

      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: widget.onPressed,
            icon:Icon(widget.icon),color: AppColors.primary,),
        contentPadding: const EdgeInsets.all(10),
        constraints: BoxConstraints(
          maxHeight: widget.maxheight,
        ),
        hintText:  widget.labelText,
        hintStyle: const TextStyle(
          color: AppColors.grey,
          fontWeight: FontWeight.w400
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: AppColors.secondary),
          gapPadding: double.maxFinite
        ),
      ),
      validator: widget.validator,
    );
  }
}


class GrowableTextField extends StatefulWidget {
  final int lines;
  final double fontsize;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const GrowableTextField({super.key, required this.onChanged, required this.controller, required this.lines, this.fontsize = 24});

  @override
  GrowableTextFieldState createState() => GrowableTextFieldState();
}

class GrowableTextFieldState extends State<GrowableTextField> {
  double width = 10;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (constraints.maxWidth != width) {
            width = constraints.maxWidth;
            setState(() {});
          }
        });
        return TextFormField(
          onChanged: widget.onChanged,
          maxLines: null,
          minLines: widget.lines,
          controller: widget.controller,
          keyboardType: TextInputType.multiline,
          decoration:   InputDecoration(

            border:  const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary),

            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
              borderSide: const BorderSide(color: AppColors.secondary),
            ),
            hintStyle: const TextStyle(color: AppColors.grey, fontWeight: FontWeight.w400, fontSize: 14),
            hintText: 'Entry your prompt here. Focus on describing data entities and relation between them.',
          ),
          style: TextStyle(fontSize: widget.fontsize),
        );
      },
    );
  }
}