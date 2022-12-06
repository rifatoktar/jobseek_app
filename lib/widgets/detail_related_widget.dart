import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby/theme/constants.dart';

class DetailRelated extends StatelessWidget {
  final String logo;
  final String job;
  final String company;
  const DetailRelated(
      {super.key,
      required this.logo,
      required this.job,
      required this.company});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.only(top: 10, left: 20),
        height: 108,
        width: 156,
        color: const Color(0xff48466D),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                logo,
                height: 20,
                color: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                job,
                style: Constant.detailRelatedHeader,
              ),
              Text(
                company,
                style: Constant.detailRelatedHeader2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Read More Detail",
                    style: Constant.detailRelatedHeader2,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(
                    "assets/icons/arrow-right.svg",
                    height: 12,
                    color: Colors.white,
                  )
                ],
              )
            ]),
      ),
    );
  }
}
