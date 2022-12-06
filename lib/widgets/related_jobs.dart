import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby/theme/constants.dart';

class RelatedJobs extends StatelessWidget {
  final String logo;
  final String jobDescription;
  final String company;
  final String time;
  final String salary;
  final String rate;
  final String rateCount;

  const RelatedJobs(
      {super.key,
      required this.logo,
      required this.jobDescription,
      required this.company,
      required this.time,
      required this.salary,
      required this.rate,
      required this.rateCount});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 20, top: 15),
        height: 108,
        width: 242,
        color: secondaryColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    logo,
                    height: 24,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobDescription,
                        style: Constant.savedHeader,
                      ),
                      Row(
                        children: [
                          Text(
                            company,
                            style: Constant.savedCom,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            time,
                            style: Constant.savedCom,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset("assets/icons/wallet.svg"),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            salary,
                            style: Constant.savedCom,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(bottom: 10, right: 16),
                padding: const EdgeInsets.only(top: 2),
                height: 20,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/star.svg",
                        height: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        rate,
                        style: Constant.savedCom,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        height: 3,
                        width: 3,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Stack(
                        children: [
                          Positioned(
                              child: Container(
                            height: 15,
                            width: 15,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"))),
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Positioned(
                              child: Container(
                            margin: const EdgeInsets.only(top: 2),
                            height: 15,
                            width: 15,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"))),
                          )),
                          const SizedBox(
                            width: 15,
                          ),
                          Positioned(
                              child: Container(
                            margin: const EdgeInsets.only(top: 2),
                            height: 15,
                            width: 15,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"))),
                          )),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        rateCount,
                        style: Constant.savedRate2,
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
