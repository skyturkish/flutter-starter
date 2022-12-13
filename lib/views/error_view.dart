import 'package:flutter/material.dart';
import 'package:flutter_starter/views/_components/animations/error_animation_view.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ErrorAnimationView(),
      ),
    );
  }
}
