import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextInputType? inputType;
  final String? Function(String?) validator;
  final IconData suffixIcon;
  final bool isRequired;
  final bool autofocus;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.inputType,
    required this.validator,
    required this.suffixIcon,
    required this.isRequired,
    required this.autofocus,
    this.controller,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode focusNode = FocusNode();
  static Color suffixIconColor = AppColor.kTextColor;

  @override
  void initState() {
    focusNode.addListener(() {
      setState(() {
        suffixIconColor =
            focusNode.hasFocus ? AppColor.kPrimaryColor : AppColor.kTextColor;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: getProportinateScreenHeight(105),
          width: double.infinity,
        ),
        TextFormField(
          focusNode: focusNode,
          controller: widget.controller,
          autofocus: widget.autofocus,
          keyboardType: widget.inputType,
          validator: widget.validator,
          cursorColor: AppColor.kPrimaryColor,
          decoration: InputDecoration(
            label: widget.isRequired
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(widget.labelText),
                      const Text(
                        '*',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  )
                : Text(widget.labelText),
            labelStyle: TextStyle(
              color: AppColor.kTextColor,
              fontSize: getProportinateScreenWidth(8),
            ),
            floatingLabelStyle: const TextStyle(color: AppColor.kPrimaryColor),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontSize: getProportinateScreenWidth(8),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                widget.suffixIcon,
                size: 20,
                color: suffixIconColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
