import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby/theme/constants.dart';

class SectorWidget extends StatelessWidget {
  final String icon;
  final String sector1;
  final String sector2;
  const SectorWidget({super.key, required this.icon, required this.sector1, required this.sector2});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 12, top: 20),
        height: 108,
        width: 70,
        color: primaryColor,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                icon,
                height: 30,
              ),
              const Spacer(),
              Text(
                sector1,
                style: Constant.sector1,
              ),
              Text(
                sector2,
                style: Constant.sector2,
              ),
            ]),
      ),
    );
  }
}
