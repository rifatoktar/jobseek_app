import 'package:flutter/material.dart';
import 'package:jobby/theme/constants.dart';
import 'package:onboarding/onboarding.dart';
//import 'package:flutter/services.dart';

import 'home.dart';

void main() {
  runApp(const IntroPage());
}

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: const BoxDecoration(
          color: bgColor,
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Image.asset(
                  'assets/images/intro.png',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Jobby',
                    style: Constant.introHeader,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'You can browse new jobs \nfor your new life',
                    style: Constant.introText,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: const BoxDecoration(
          color: bgColor,
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Image.asset(
                  'assets/images/intro.png',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Jobby',
                    style: Constant.introHeader,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'You can browse new jobs \nfor your new life',
                    style: Constant.introText,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: const BoxDecoration(
          color: bgColor,
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Image.asset(
                  'assets/images/intro.png',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Jobby',
                    style: Constant.introHeader,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'You can browse new jobs \nfor your new life',
                    style: Constant.introText,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    //materialButton = _skipButton() as Material;
    index = 0;
  }

  Container _skipButton({void Function(int)? setIndex}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      height: 50,
      width: 70,
      color: secondaryColor,
      child: InkWell(
        onTap: () {
          if (setIndex != null) {
            index = 2;
            setIndex(2);
          }
        },
        child: Center(
          child: Text(
            'Skip',
            style: Constant.button2Text,
          ),
        ),
      ),
    );
  }

  Container get _signupButton {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 50,
      width: 90,
      color: secondaryColor,
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Text(
            'Sign Up',
            style: Constant.button2Text,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          // systemOverlayStyle: const SystemUiOverlayStyle(
          //   statusBarColor: bgColor,
          // ),
          elevation: 0,
          backgroundColor: bgColor,
        ),
        body: SafeArea(
          child: Onboarding(
            pages: onboardingPagesList,
            onPageChange: (int pageIndex) {
              index = pageIndex;
            },
            startPageIndex: 0,
            footerBuilder: (context, dragDistance, pagesLength, setIndex) {
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 50),
                    height: 30,
                    child: CustomIndicator(
                        netDragPercent: dragDistance,
                        pagesLength: pagesLength,
                        indicator: Indicator(
                          activeIndicator:
                              const ActiveIndicator(color: Color(0xff48466D)),
                          closedIndicator:
                              const ClosedIndicator(color: Color(0xffABEDD8)),
                          indicatorDesign: IndicatorDesign.polygon(
                            polygonDesign: PolygonDesign(
                              polygon: DesignType.polygon_circle,
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 20),
                        height: 50,
                        width: 242,
                        color: primaryColor,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()),
                            );
                          },
                          child: Text(
                            "Get Started",
                            style: Constant.buttonText,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      index == pagesLength - 1
                          ? _signupButton
                          : _skipButton(setIndex: setIndex)
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
