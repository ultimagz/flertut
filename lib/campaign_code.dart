import 'package:flutter/material.dart';

import 'car_type.dart';

class CampaignCodePage extends StatefulWidget {
  CampaignCodePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CampaignCodeState createState() => _CampaignCodeState();
}

class _CampaignCodeState extends State<CampaignCodePage> {
  String digit1 = "?";
  String digit2 = "?";
  String digit3 = "?";
  String digit4 = "?";
  String digit5 = "?";
  String digit6 = "?";
  String digit7 = "?";

  CarType selectedCarType;

  final carTypeList = <CarType>[
    CarType("1", "รถป้ายเหลือง"),
    CarType("2", "กระบะ 4 ประตู (รย.1)"),
    CarType("N", "รถเก๋ง"),
    CarType("P", "กระบะ (ไม่ใช่ 4WH)"),
    CarType("V", "รถตู้"),
    CarType("W", "กระบะ 4WH"),
  ];

  var campaignDigitStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto',
    fontSize: 24,
  );

  var labelStyle = TextStyle(
    color: Colors.black38,
    fontWeight: FontWeight.normal,
    fontFamily: 'Roboto',
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          _campaignCodePreview(),
          _formDigit1(),
//        _formDigit2(),
//        _formDigit3(),
//        _formDigit4(),
//        _formDigit5(),
//        _formDigit6(),
//        _formDigit7(),
        ],
      ),
    );
  }

  Widget _campaignCodePreview() {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(this.digit1, maxLines: 1, style: campaignDigitStyle),
          Text(
            this.digit2,
            maxLines: 1,
            style: campaignDigitStyle,
          ),
          Text(
            this.digit3,
            maxLines: 1,
            style: campaignDigitStyle,
          ),
          Text(
            this.digit4,
            maxLines: 1,
            style: campaignDigitStyle,
          ),
          Text(
            this.digit5,
            maxLines: 1,
            style: campaignDigitStyle,
          ),
          Text(
            this.digit5,
            maxLines: 1,
            style: campaignDigitStyle,
          ),
          Text(
            this.digit6,
            maxLines: 1,
            style: campaignDigitStyle,
          ),
        ],
      ),
    );
  }

  Widget _formDigit1() {

    var _dropdownItems =
        carTypeList
        .map<DropdownMenuItem<CarType>>(createDropdownMenuItem)
        .toList();

//    selectedCarType = carTypeList[0];

    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "ประเภทรถ",
            style: labelStyle,
          ),
          DropdownButton<CarType>(
            value: selectedCarType,
            onChanged: (CarType newValue) {
              setState(() {
                selectedCarType = newValue;
                digit1 = newValue.key;
              });
            },
            items: _dropdownItems,
          )
        ],
      ),
    );
  }

  Widget _formDigit2() {
    return null;
  }

  Widget _formDigit3() {
    return null;
  }

  Widget _formDigit4() {
    return null;
  }

  Widget _formDigit5() {
    return null;
  }

  Widget _formDigit6() {
    return null;
  }

  Widget _formDigit7() {
    return null;
  }

  DropdownMenuItem<CarType> createDropdownMenuItem(CarType type) {
    return DropdownMenuItem<CarType>(
      value: type,
      child: Text(type.toString()),
    );
  }
}
