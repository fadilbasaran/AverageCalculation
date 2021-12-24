import 'package:flutter/material.dart';
import 'package:flutter_dinamik_not/constants/app_constants.dart';
import 'package:flutter_dinamik_not/helper/data_helper.dart';

class KrediDropDown extends StatefulWidget {
  final Function onKrediSecildi;
  KrediDropDown({required this.onKrediSecildi, Key? key}) : super(key: key);

  @override
  _KrediDropDownState createState() => _KrediDropDownState();
}

class _KrediDropDownState extends State<KrediDropDown> {
  double secilenKrediDegeri = 1.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.3),
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<double>(
        value: secilenKrediDegeri,
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        items: DataHelper.tumDerslerinKredileri(),
        underline: Container(),
        onChanged: (deger) {
          setState(() {
            secilenKrediDegeri = deger!;
            widget.onKrediSecildi(deger);
          });
        },
      ),
    );
  }
}
