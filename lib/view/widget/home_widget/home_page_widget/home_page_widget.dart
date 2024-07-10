import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app_routers/routes_name.dart';
import '../../../../core/constants/assets.dart';
import '../../../dtomic/image_card/image_card_two.dart';
import '../../../dtomic/text_widget/text_widget.dart';
import '../cart_icon_widget/cart_icon_widget.dart';
import '../list_cart_grid_view_widget/list_cart_grid_view_widget.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    super.key,
  });

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

String searchText = '';

List<Map<String, dynamic>> listcartGridView = [
  {
    'image': ImageHome.korea,
    'height': 200.0,
    'text':'Korea',
  },
  {
    'image': ImageHome.turkey,
    'height': 125.0,
    'text':'Turkey',

  },
  {
    'image': ImageHome.japan,
    'height': 200.0,
    'text':'Japan',

  },
  {
    'image': ImageHome.dubai,
    'height': 120.0,
    'text':'Dubai',

  },
];
final formfield = GlobalKey<FormState>();
final searchController = TextEditingController();
int index = 0;

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> cartIcon = [
      {
        'onTap': () {
          context.pushNamed(RoutesName.bookingHotel);
        },
        'image': ImageHome.hotels,
        'color': const Color(0xfff3e1d8),
        'text': 'Hotels',
      },
      {
        'onTap': () {
          context.pushNamed(RoutesName.bookingFlight);
        },
        'image': ImageHome.flighrs,
        'color': const Color(0xfff1dadd),
        'text': 'Flights',
      },
      {
        'onTap': () {
          context.pushNamed(RoutesName.flightAndHotel);
        },
        'image': ImageHome.all,
        'color': const Color(0xffcceaeb),
        'text': 'All',
      },
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageCardTwo(
            inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
            prefixIconForm: const Icon(
              Icons.search,
              color: Colors.black45,
            ),
            hintTextForm: 'Search your destination',
            heightColumn: 30,
            image: ImageHome.james,
            widthImage: 45,
            icon: Icons.notifications_none_sharp,
            onPressedIcon: () {},
            widthRowTwo: 15.w,
            widthRowOne: 95.w,
            distance: 15,
            fontWeightSubTitle: FontWeight.w400,
            fontWeightTitle: FontWeight.w500,
            fontSizeSubTitle: 12,
            fontSizeTitle: 30,
            subTitle: 'Where are you going next?',
            title: 'Hi, James!',
            paddingList: REdgeInsets.only(left: 25, top: 40),
            paddingForm: const EdgeInsets.only(top: 140, right: 25, left: 25),
            formfield: formfield,
            searchController: searchController,
            onTap: () {
              setState(() {
                searchText = searchController.text;
              });
            },
          ),
          Padding(
            padding: REdgeInsets.only(
              right: 25,
              left: 25,
              top: 20,
            ),
            child: SizedBox(
              width: 411.w,
              child: Column(
                children: [
                  CartIconWidget(cartIcon: cartIcon),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidget(
                        text: 'Popular Destinations',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const TextWidget(
                          text: 'See All',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6155CC),
                        ),
                      ),
                    ],
                  ),
                  ListCartGridViewWidget(
                    listcartGridView: listcartGridView,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
