import 'package:flutter/material.dart';

import '../theme.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5.0,
      backgroundColor: kWhiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          kDrawerListWidget(index: 1, icon: Icons.home),
          kDrawerListWidget(index: 2, icon: Icons.money),
          kDrawerListWidget(index: 3, icon: Icons.person),
          kDrawerListWidget(index: 4, icon: Icons.calculate)
        ],
      ),
    );
  }

  GestureDetector kDrawerListWidget(
      {required int index, required IconData icon}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
            vertical: defaultMargin / 4, horizontal: defaultMargin / 2),
        padding: const EdgeInsets.all(defaultMargin / 4),
        decoration: BoxDecoration(
            borderRadius: kBorderRadius,
            color:
                selectedIndex == index ? kPrimaryColor.withOpacity(0.3) : null),
        child: Icon(
          icon,
          color: selectedIndex == index ? kPrimaryColor : kSecondaryColor,
        ),
      ),
    );
  }
}
