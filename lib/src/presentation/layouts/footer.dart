import 'package:flutter/material.dart';
import '../../constants/_colors.dart';

class FooterLayout extends StatelessWidget {
  const FooterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Container(
          height: 60,
          color: ColorsConstants.white,
          alignment: Alignment.center,
          child: Row(
            children: const [
              Icon(Icons.eco_rounded),
              SizedBox(width: 5),
              Text("Footer"),
            ],
          )),
    );
  }
}
