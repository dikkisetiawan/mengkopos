import 'package:flutter/material.dart';

import '/ui/theme.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: whiteTextStyle,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.search,
          color: kPrimaryColor,
        ),
        filled: true,
        fillColor: kWhiteColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultCircular),
            borderSide: BorderSide(color: lineColor, width: 1)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultCircular),
            borderSide: BorderSide(color: lineColor, width: 1)),
        hintText: 'Pilih atau Cari Karyawan',
        hintStyle: subTitleTextStyle,
      ),
    );
  }
}
