import 'dart:developer';

import 'package:flutter/material.dart';

class BottomNavButton extends StatelessWidget {
  const BottomNavButton({
    super.key,
    required this.btnFunction,
  });

  final VoidCallback btnFunction;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.blueGrey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: btnFunction,
      label: const Text(
        "Preview Code",
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
