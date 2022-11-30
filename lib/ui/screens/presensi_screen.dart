import 'package:flutter/material.dart';
import 'package:mengkopos/ui/widgets/search_field.dart';

import '../theme.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/side_menu.dart';

class PresensiScreen extends StatelessWidget {
  const PresensiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: kAppBarWidget().appBarWidget(),
      body: bodyWidget(),
    );
  }

  Row bodyWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 70, child: SideMenu()),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(defaultMargin),
            padding: const EdgeInsets.all(defaultMargin),
            decoration: BoxDecoration(
                boxShadow: [kShadow],
                borderRadius: kBorderRadius,
                color: kWhiteColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [FirstRowWidget(), secondRowWidget()],
            ),
          ),
        ),
      ],
    );
  }

  Widget secondRowWidget() => const Expanded(child: Text('aasfsf'));
}

class FirstRowWidget extends StatelessWidget {
  FirstRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(padding: const EdgeInsets.all(defaultMargin), children: [
        Center(
          child: Text(
            'Senin, 27 Maret 2022',
            style: titleTextStyle,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            statWidget(title: 'Absen Masuk'),
            statWidget(title: 'Absen Pulang')
          ],
        ),
        Text(
          'Pilih Karyawan',
          style: titleTextStyle,
        ),
        const SizedBox(
          height: defaultMargin,
        ),
        const SearchField()
      ]),
    );
  }

  Expanded statWidget({required String title}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(
            left: defaultMargin, top: defaultMargin, bottom: defaultMargin),
        padding: const EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            borderRadius: kBorderRadius,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            )),
        child: Column(
          children: [
            Text(
              title,
              style: titleTextStyle,
            ),
            const SizedBox(
              height: defaultMargin,
            ),
            Text(
              '--',
              style: titleTextStyle,
            ),
            const SizedBox(
              height: defaultMargin,
            ),
          ],
        ),
      ),
    );
  }
}
