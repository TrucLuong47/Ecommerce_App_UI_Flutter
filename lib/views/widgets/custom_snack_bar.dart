import 'package:flutter/material.dart';

SnackBar customSnackBar(String message, IconData icon, Color color) => SnackBar(
      content: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            message,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      duration: const Duration(milliseconds: 1300),
      behavior: SnackBarBehavior.floating,
    );

void showSnackBar(
        BuildContext context, String message, IconData icon, Color color) =>
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        customSnackBar(message, icon, color),
      );
