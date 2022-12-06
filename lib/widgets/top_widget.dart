import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby/theme/constants.dart';

class TopWidget extends StatelessWidget {
  final String likeCode = '\u2764';
  final String logo;
  final String userImage;
  final String userName;
  final String userText;

  const TopWidget({super.key, required this.logo, required this.userImage, required this.userName, required this.userText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 120,
        width: 156,
        color: const Color(0xffABEDD8),
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              logo,
              height: 20,
              color: Colors.black,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              userImage))),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  userName,
                  style: Constant.topUser,
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              userText,
              style: Constant.topUser2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Read More Review",
                  style: Constant.textButton,
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(
                  "assets/icons/arrow-right.svg",
                  height: 12,
                  color: const Color(0xff000AFF),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
