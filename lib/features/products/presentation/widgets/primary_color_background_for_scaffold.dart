import 'package:flutter/material.dart';

class PrimaryColorBackgroundForScaffold extends StatelessWidget {
  final Widget scaffoldWidget;
  final double colorHeight;
  const PrimaryColorBackgroundForScaffold({
    Key? key,
    required this.scaffoldWidget,
    this.colorHeight = 200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
        ),
        Container(
          height: colorHeight,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            color: colorScheme.primary,
          ),
        ),
        scaffoldWidget
      ],
    );
  }
}
