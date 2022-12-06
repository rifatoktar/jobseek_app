import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:jobby/widgets/home_header.dart';

import '../theme/constants.dart';
import '../widgets/detail_header.dart';
import '../widgets/detail_related_widget.dart';

class JobDetail extends StatefulWidget {
  const JobDetail({super.key});

  @override
  State<JobDetail> createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: bgColor,
        ),
        elevation: 0,
        backgroundColor: bgColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/arrow-left.svg",
            height: 24,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            "Job Detail",
            style: Constant.homeHeader,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/heart.svg",
                height: 24,
                color: Colors.black,
              ))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 65,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/icons/amazon.svg",
                  height: 64,
                ),
                const SizedBox(
                  width: 22,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Data Engineer, Ring AI",
                      style: Constant.detailHeader,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Amazon Inc.",
                          style: Constant.detailHeader2,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          height: 3,
                          width: 3,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(.7)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "3 day ago",
                          style: Constant.detailHeader2,
                        ),
                      ],
                    ),
                    Text(
                      "Job ID: 2304161 | AMZN Dev Cntr Poland sp. z.o.o",
                      style: Constant.detailHeader3,
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const DetailHeader(
            header: 'Job Description',
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Since its founding in 2013, Ring has been on a mission to make \nneighbourhoods safer. From the video doorbell to the DIY Ring \nAlarm system, Ring’s smart home security product line offers \nusers affordable whole-home and neighbourhood security. \nAt Ring, we are committed to making home and neighbourhood \nsecurity accessible and effective for everyone - while working \nhard to bring communities together. Ring is an Amazon company. \nFor more information, visit www.ring.com. With Ring, you’re always \nhome.",
            style: Constant.detailText1,
          ),
          const SizedBox(
            height: 10,
          ),
          const DetailHeader(
            header: 'Basic Qualifications',
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Since its founding in 2013, Ring has been on a mission to make \nneighbourhoods safer. From the video doorbell to the DIY Ring \nAlarm system, Ring’s smart home security product line offers \nusers affordable whole-home and neighbourhood security. \nAt Ring, we are committed to making home and neighbourhood \nsecurity accessible and effective for everyone - while working \nhard to bring communities together. Ring is an Amazon company. \nFor more information, visit www.ring.com. With Ring, you’re always \nhome.",
            style: Constant.detailText1,
          ),
          const SizedBox(
            height: 40,
          ),
          const HomeHeader(header: "Related Jobs"),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 108,
            child: ListView(scrollDirection: Axis.horizontal, children: const [
              DetailRelated(
                company: 'Google Inc.',
                job: 'Data Engineer',
                logo: 'assets/icons/google.svg',
              ),
              DetailRelated(
                company: 'Microsoft Inc.',
                job: 'Senior Data Engineer',
                logo: 'assets/icons/windows.svg',
              ),
              DetailRelated(
                company: 'Microsoft Inc.',
                job: 'Senior Data Engineer',
                logo: 'assets/icons/windows.svg',
              )
            ]),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 400,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              color: const Color(0xffABEDD8),
              child: Center(
                  child: Text(
                "Apply To Job",
                style: Constant.buttonText,
              )),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ]),
      )),
    );
  }
}
