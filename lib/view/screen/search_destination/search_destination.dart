import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../../../../core/app_routers/routes_name.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/form/custom_text_form_field.dart';
import '../../dtomic/image_card/image_card_one.dart';

class SearchDestination extends StatefulWidget {
  const SearchDestination({super.key});

  @override
  State<SearchDestination> createState() => _SearchDestinationState();
}

class _SearchDestinationState extends State<SearchDestination> {
  final searchController = TextEditingController();
  final formfield = GlobalKey<FormState>();
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageCardOne(
            onTapIcon: () {
              context.pop();
            },
            fontSizeTitle: 30.sp,
            fontWeightTitle: FontWeight.w500,
            textLeft: 68.w,
            textTop: 58.h,
            textRight: 69.w,
            title: 'Search ',
            distance: 0.h,
            subTitle: 'your destination',
            fontSizeSubTitle: 30,
            fontWeightSubTitle: FontWeight.w500,
          ),
          Expanded(
            child: Form(
              key: formfield,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    CustomTextFormField(
                      hintText: 'Search your destination',
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter
                      ],
                      contentPadding: REdgeInsets.all(15),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black45,
                      ),
                      controller: searchController,
                      onTap: () {
                        setState(() {
                          searchText = searchController.text;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.my_location_sharp,
                        size: 16,
                      ),
                      title: GestureDetector(
                        onTap: () {},
                        child: const TextWidget(
                          text: 'Search nearby destination',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Buttons(
                      onPressed: () {
                        context.pushNamed(RoutesName.bookingHotel);
                        context.pop();
                      },
                      borderColor: AppColos.linear,
                      borderRadius: 50.r,
                      colorText: AppColos.white,
                      fontSizeText: 16.sp,
                      fontWeightText: FontWeight.w500,
                      isText: true,
                      text: 'Search',
                      width: 411.w,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
