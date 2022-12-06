import 'package:flutter/material.dart';

import '../theme/constants.dart';

class DetailHeader extends StatelessWidget {
  final String header;
  const DetailHeader({super.key, required this.header});

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
        TextButton(onPressed: (){}, child: Text("Read More", style: Constant.readMore,),)
      ]),
    );
  }
}
