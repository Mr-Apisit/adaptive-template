import 'package:flutter/material.dart';

class VerticalListWidget extends StatelessWidget {
  const VerticalListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([for (var i = 0; i < 15; i++) const Placeholder()]),
    );
  }
}
