import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class DefaultPasswordField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String? Function(String?) validator;
  const DefaultPasswordField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: getProportinateScreenHeight(105),
          width: double.infinity,
        ),
        TextFormField(
          enableSuggestions: false,
          validator: validator,
          cursorColor: AppColor.kPrimaryColor,
          decoration: InputDecoration(
            label: Text(labelText),
            labelStyle: TextStyle(
              color: AppColor.kTextColor,
              fontSize: getProportinateScreenWidth(8),
            ),
            floatingLabelStyle: const TextStyle(color: AppColor.kPrimaryColor),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: getProportinateScreenWidth(8),
            ),
          ),
          obscureText: true,
        ),
      ],
    );
  }
}

class ShowHidePasswordField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  const ShowHidePasswordField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.validator,
    this.controller,
  });

  @override
  State<ShowHidePasswordField> createState() => _ShowHidePasswordFieldState();
}

class _ShowHidePasswordFieldState extends State<ShowHidePasswordField> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: getProportinateScreenHeight(105),
          width: double.infinity,
        ),
        TextFormField(
          controller: widget.controller,
          enableSuggestions: false,
          validator: widget.validator,
          cursorColor: AppColor.kPrimaryColor,
          decoration: InputDecoration(
            label: Text(widget.labelText),
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
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: isVisible
                    ? const Icon(
                        Icons.key_off_rounded,
                        size: 22,
                        color: AppColor.kTextColor,
                      )
                    : const Icon(
                        Icons.key_rounded,
                        size: 22,
                        color: AppColor.kPrimaryColor,
                      ),
              ),
            ),
          ),
          obscureText: isVisible,
        ),
      ],
    );
  }
}
