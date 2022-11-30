import 'package:flutter/material.dart';
import 'package:mengkopos/ui/responsiveness.dart';
import 'package:mengkopos/ui/widgets/kelevated_button.dart';
import 'package:mengkopos/ui/widgets/search_field.dart';

import '../theme.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/kcontainer_widget.dart';
import '../widgets/side_menu.dart';

class PresensiScreen extends StatelessWidget {
  const PresensiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Responsiveness.isMobile(context) ? const SideMenu() : null,
      backgroundColor:
          Responsiveness.isMobile(context) ? kWhiteColor : kBackgroundColor,
      appBar: kAppBarWidget().appBarWidget(context),
      body:
          Responsiveness.isMobile(context) ? mobileView() : tabletView(context),
    );
  }

  SingleChildScrollView mobileView() {
    return SingleChildScrollView(
        child: Column(
      children: const [
        SizedBox(
          height: defaultMargin,
        ),
        AbsensiDataWidget(),
        SizedBox(
          height: defaultMargin,
        ),
        LogAbsenWidget()
      ],
    ));
  }

  Row tabletView(BuildContext context) {
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
              children: [
                Expanded(
                    child: ListView(children: const [AbsensiDataWidget()])),
                Expanded(child: ListView(children: const [LogAbsenWidget()]))
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class LogAbsenWidget extends StatelessWidget {
  const LogAbsenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultMargin),
      child: Column(
        children: [
          KcontainerWidget(
              width: double.infinity,
              height: 200,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.video_camera_back,
                    color: kGreyColor,
                    size: 80,
                  ))),
          const SizedBox(
            height: defaultMargin,
          ),
          KelevatedButton(onPressed: () {}, title: 'Absen Masuk'),
          textfieldWidget(),
          buttonGridViewWidget(context),
        ],
      ),
    );
  }

  Widget buttonGridViewWidget(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: 12,
          itemBuilder: (BuildContext ctx, index) {
            return KcontainerWidget(
              width: 50,
              height: 50,
              child: Center(
                  child: Text(
                '${index + 1}',
                style: titleTextStyle.copyWith(color: Colors.black),
              )),
            );
          }),
    );
  }

  Row textfieldWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textFieldItemWidget(),
        textFieldItemWidget(),
        textFieldItemWidget(),
        textFieldItemWidget(),
        textFieldItemWidget(),
        textFieldItemWidget()
      ],
    );
  }

  Widget textFieldItemWidget() => Expanded(
        child: KcontainerWidget(
            margin: const EdgeInsets.only(
                left: defaultMargin / 2,
                top: defaultMargin,
                bottom: defaultMargin),
            height: 50,
            child: const SizedBox()),
      );
}

class AbsensiDataWidget extends StatelessWidget {
  const AbsensiDataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultMargin),
      child: Column(children: [
        Center(
          child: Text(
            'Senin, 27 Maret 2022',
            style: titleTextStyle,
          ),
        ),
        Row(
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
        const SearchField(),
        karyawanListWidget(),
        karyawanListWidget(),
        karyawanListWidget(),
        karyawanListWidget(),
        karyawanListWidget()
      ]),
    );
  }

  Widget karyawanListWidget() {
    return KcontainerWidget(
        margin: const EdgeInsets.only(top: defaultMargin),
        child: ListTile(
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: kBorderRadius,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                style: subTitleTextStyle,
              ),
              Text(
                'Kasir',
                style: greyTextStyle,
              ),
            ],
          ),
        ));
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
              color: lineColor,
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
