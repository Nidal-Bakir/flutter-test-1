import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QITLogo extends StatelessWidget {
  final double? width;
  final double? height;

  const QITLogo({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: SvgPicture.asset(
        'assets/logo/logo.svg',
        width: width,
        height: height,
        semanticsLabel: 'QIT Logo',
      ),
    );
  }
}
