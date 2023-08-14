import 'package:flutter/material.dart';

Widget buttonWidget(
        {required String name, required void Function() onPressed}) =>
    ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(8),
          backgroundColor: Colors.orange,
          minimumSize: const Size(130, 50),
        ),
        child: Text(name));
