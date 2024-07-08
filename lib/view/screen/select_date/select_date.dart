import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';

import '../../../../core/app_routers/routes_name.dart';
import '../../dtomic/image_card/image_card_one.dart';

class SelectDate extends StatefulWidget {
  const SelectDate({super.key});

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  String selectedDate = '';
  String dateCount = '';
  String range = '';
  String rangeCount = '';
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        dateCount = args.value.length.toString();
      } else {
        rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCardOne(
              onTapIcon: () {
                Navigator.pop(context);
              },
              title: 'Select date',
            ),
            Padding(
              padding: REdgeInsets.only(
                left: 25,
                right: 25,
                top: 29,
              ),
              child: Column(
                children: [
                  Positioned(
                    left: 0,
                    top: 80,
                    right: 0,
                    bottom: 0,
                    child: SfDateRangePicker(
                      onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                      // cancelText: 'fdsvsv',
                      // confirmText: 'fdsvsvdsv',
                      headerHeight: 30.h,
                      // selectionRadius: ,

                      backgroundColor: Colors.transparent,
                      rangeSelectionColor: const Color(0xfff3dccf),
                      todayHighlightColor: Colors.black,
                      endRangeSelectionColor: const Color(0xffFE9C5E),
                      startRangeSelectionColor: const Color(0xffFE9C5E),
                      initialSelectedRange: PickerDateRange(
                        DateTime.now().subtract(
                          const Duration(
                            days: 4,
                          ),
                        ),
                        DateTime.now().add(
                          const Duration(
                            days: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Buttons(
                    onPressed: () {
                      context.goNamed(RoutesName.bookingHotel);
                    },
                    isText: true,
                    width: 411.w,
                    text: 'Select',
                    fontSizeText: 16,
                    fontWeightText: FontWeight.w500,
                    colorText: AppColos.white,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Buttons(
                    borderColor: const Color(0xffe3e3f3),
                    onPressed: () {
                      context.goNamed(RoutesName.home);
                    },
                    isText: true,
                    width: 411.w,
                    text: 'Cancel',
                    fontSizeText: 16,
                    fontWeightText: FontWeight.w500,
                    colorText: AppColos.linear,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
