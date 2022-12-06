import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby/theme/constants.dart';
import 'package:flutter/services.dart';
import 'package:jobby/widgets/top_widget.dart';

import '../widgets/home_header.dart';
import '../widgets/related_jobs.dart';
import '../widgets/saved_jobs.dart';
import '../widgets/sector_widget.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final String likeCode = '\u2764';
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
        title: Text(
          "Jobby",
          style: Constant.homeHeader,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/work.svg",
                height: 24,
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/heart.svg",
                height: 24,
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
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 110,
            child: ListView(scrollDirection: Axis.horizontal, children: const [
              SavedJob(
                company: 'Apple Inc.',
                jobDescription: 'Senior Developer',
                logo: 'assets/icons/apple.svg',
                rate: '4.9',
                rateCount: '200 More Review',
                salary: '70k-100k',
                time: '2 day ago',
              ),
              SizedBox(
                width: 16,
              ),
              SavedJob(
                company: 'Amazon Inc.',
                jobDescription: 'Senior Developer',
                logo: 'assets/icons/amazon-2.svg',
                rate: '4.8',
                rateCount: '200 More Review',
                salary: '70k-100k',
                time: '2 day ago',
              ),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          const HomeHeader(
            header: "Sectors",
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 108,
            child: ListView(scrollDirection: Axis.horizontal, children: const [
              SectorWidget(
                icon: 'assets/icons/terminal.svg',
                sector1: 'Software',
                sector2: '1k jobs',
              ),
              SizedBox(
                width: 16,
              ),
              SectorWidget(
                icon: 'assets/icons/document.svg',
                sector1: 'Editing',
                sector2: '20k jobs',
              ),
              SizedBox(
                width: 16,
              ),
              SectorWidget(
                icon: 'assets/icons/camera.svg',
                sector1: 'Content',
                sector2: '12k jobs',
              ),
              SizedBox(
                width: 16,
              ),
              SectorWidget(
                icon: 'assets/icons/coffee.svg',
                sector1: 'Service',
                sector2: '100k jobs',
              ),
              SizedBox(
                width: 16,
              ),
              SectorWidget(
                icon: 'assets/icons/user.svg',
                sector1: 'PT',
                sector2: '1k jobs',
              ),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          const HomeHeader(header: "Related Jobs"),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 108,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(scrollDirection: Axis.horizontal, children: const [
              RelatedJobs(
                company: 'Microsoft Inc.',
                jobDescription: 'Junior UI Designer',
                logo: 'assets/icons/windows.svg',
                rate: '4.9',
                rateCount: '200 More Review',
                salary: '70k-90k',
                time: '',
              ),
              SizedBox(
                width: 16,
              ),
              RelatedJobs(
                company: 'PayPal Inc.',
                jobDescription: 'Junior UI Designer',
                logo: 'assets/icons/paypal.svg',
                rate: '4.8',
                rateCount: '250 More Review',
                salary: '80k-100k',
                time: '',
              ),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          const HomeHeader(header: "Top Recruiters"),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TopWidget(
                  logo: 'assets/icons/google.svg',
                  userImage:
                      'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
                  userName: 'William Hack',
                  userText:
                      'Google has many benefit for \nsoftware engineers $likeCode $likeCode',
                ),
                const SizedBox(
                  width: 16,
                ),
                TopWidget(
                  logo: 'assets/icons/eventbrite.svg',
                  userImage:
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
                  userName: 'Jack McCarry',
                  userText:
                      'There is many position for junior \ndeveloper in Eventbrite. $likeCode $likeCode',
                ),
                const SizedBox(
                  width: 16,
                ),
                TopWidget(
                  logo: 'assets/icons/eventbrite.svg',
                  userImage:
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
                  userName: 'Jack McCarry',
                  userText:
                      'There is many position for junior \ndeveloper in Eventbrite. $likeCode $likeCode',
                ),
              ],
            ),
          )
        ]),
      )),
    );
  }
}
