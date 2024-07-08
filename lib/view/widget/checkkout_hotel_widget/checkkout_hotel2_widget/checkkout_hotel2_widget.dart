import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/assets.dart';
import '../is_check_widget/is_check_widget.dart';

class CheckkoutHotel2Widget extends StatefulWidget {
  const CheckkoutHotel2Widget({super.key});

  @override
  State<CheckkoutHotel2Widget> createState() => _CheckkoutHotel2WidgetState();
}

class _CheckkoutHotel2WidgetState extends State<CheckkoutHotel2Widget> {
  bool isCheck = true;
  List<Map<String, dynamic>> addCard1 = [
    {
      'imageIcon': ImageCheckkoutHotel.miniMarket,
      'title': 'Mini Market',
      'isContainer': true,
      'value': true,
    },
    {
      'imageIcon': ImageCheckkoutHotel.credit,
      'title': 'Credit / Debit Card',
      'isContainer': false,
      'value': true,
    },
    {
      'imageIcon': ImageCheckkoutHotel.bankTransfer,
      'title': 'Bank Transfer',
      'isContainer': true,
      'value': true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 411.w,
          height: 320.h,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: addCard1.length,
            itemBuilder: (context, index) {
              return IsCheckWidget(
                isContainer: addCard1[index]['isContainer'],
                image: addCard1[index]['imageIcon'],
                text: addCard1[index]['title'],
                isCheck: isCheck == addCard1[index]['value'],
                onTap: () {
                  setState(() {
                    addCard1[index]['value'] = !addCard1[index]['value'];
                  });
                },
              );
            },
          ),
        ),
     
      ],
    );
  }
}
