import 'package:flutter/material.dart';
import 'package:flutter_dinamik_not/constants/app_constants.dart';
import 'package:flutter_dinamik_not/helper/data_helper.dart';

class HarfDropDownWidget extends StatefulWidget {
  final Function onHarfSecildi;
  HarfDropDownWidget({required this.onHarfSecildi, Key? key}) : super(key: key);

  @override
  _HarfDropDownWidgetState createState() => _HarfDropDownWidgetState();
}

class _HarfDropDownWidgetState extends State<HarfDropDownWidget> {
  double secilenHarfDegeri = 4.0;

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
        value: secilenHarfDegeri,
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        items: DataHelper.tumDerslerinHarfleri(),
        underline: Container(),
        onChanged: (deger) {
          setState(() {
            secilenHarfDegeri = deger!;
            widget.onHarfSecildi(deger);
          });
        },
      ),
    );
  }
}
