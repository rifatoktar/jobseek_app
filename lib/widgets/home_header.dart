import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/constants.dart';

class HomeHeader extends StatelessWidget {
  final String header;
  const HomeHeader({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(children: [
        Text(
          header,
          style: Constant.homeHeader,
        ),
        const Spacer(),
        GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              "assets/icons/arrow-right.svg",
              height: 24,
              color: Colors.black,
            ))
      ]),
    );
  }
}
