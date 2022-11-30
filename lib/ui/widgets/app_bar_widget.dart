import 'package:flutter/material.dart';

import '../theme.dart';

class kAppBarWidget extends StatelessWidget {
  kAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return appBarWidget();
  }

  AppBar appBarWidget() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leadingWidth: 150,
      leading: Padding(
        padding: const EdgeInsets.only(left: defaultMargin / 2),
        child: Image.asset(
          'assets/logo.png',
        ),
      ),
      toolbarHeight: 50,
      actions: profileButtonWidget,
    );
  }

  List<Widget> get profileButtonWidget {
    return [
      Container(
        margin: const EdgeInsets.symmetric(
            vertical: defaultMargin / 4, horizontal: defaultMargin / 2),
        padding: const EdgeInsets.all(defaultMargin / 4),
        decoration:
            BoxDecoration(borderRadius: kBorderRadius, color: kWhiteColor),
        child: Icon(
          Icons.storefront,
          color: kPrimaryColor,
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Indo Coffe',
            style: whiteTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            'Dago Bandung',
            style: whiteTextStyle.copyWith(fontSize: 14),
          )
        ],
      ),
      SizedBox(
        width: defaultMargin / 2,
      )
    ];
  }
}
