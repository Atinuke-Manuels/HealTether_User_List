import 'package:flutter/material.dart';

class ErrorMessageWidget extends StatelessWidget {
  final String error;

  const ErrorMessageWidget({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Error: $error'),
    );
  }
}