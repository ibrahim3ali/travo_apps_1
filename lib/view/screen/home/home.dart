import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../../../core/app_routers/routes_name.dart';
import '../../../core/constants/assets.dart';
import '../../dtomic/image_card/image_card_two.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _currentIndex = 0;

  bool isActive = false;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        body: const SafeArea(
          child: TabBarView(
            children: [
              HomePageWidget(),
            ],
          ),
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex == i),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite_border),
              title: const Text("Likes"),
              selectedColor: Colors.pink,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.card_travel_sharp),
              title: const Text("briefcase"),
              selectedColor: Colors.orange,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}

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
    'isFavorite': false,
    'favoriteRight': 0.0,
    'favoriteLeft': 100.0,
    'topTitle': 118.0,
    'leftTitle': 10.0,
    'title': 'Korea',
    'image': ImageHome.korea,
    'favoriteTop': 10.0.h,
  },
  {
    'isFavorite': false,
    'favoriteRight': 0.0,
    'favoriteLeft': 90.0,
    'topTitle': 62.0,
    'leftTitle': 10.0,
    'title': 'Turkey',
    'image': ImageHome.turkey,
    'favoriteTop': 10.0.h,
  },
  {
    'isFavorite': false,
    'favoriteRight': 0.0,
    'favoriteLeft': 90.0,
    'topTitle': 62.0,
    'leftTitle': 10.0,
    'title': 'Dubai',
    'image': ImageHome.dubai,
    'favoriteTop': 10.0.h,
  },
  {
    'isFavorite': false,
    'favoriteRight': 0.0,
    'favoriteLeft': 100.0,
    'topTitle': 118.0,
    'leftTitle': 10.0,
    'title': 'Japan',
    'image': ImageHome.japan,
    'favoriteTop': 10.0.h,
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
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ImageCardTwo(
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
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
                  paddingForm:
                      const EdgeInsets.only(top: 140, right: 25, left: 25),
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
                  child: Column(
                    children: [
                      CartIconWidget(cartIcon: cartIcon),
                      SizedBox(
                        height: 20.h,
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// }

class ListCartGridViewWidget extends StatefulWidget {
  const ListCartGridViewWidget({
    super.key,
    required this.listcartGridView,
  });

  final List<Map<String, dynamic>> listcartGridView;

  @override
  State<ListCartGridViewWidget> createState() => _ListCartGridViewWidgetState();
}

class _ListCartGridViewWidgetState extends State<ListCartGridViewWidget> {
  final Set<String> favoriteItems = {};
  final List<String> items = [
    'Item 1',
    'Item 3',
    'Item 2',
    'Item 4',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 411.w,
      height: MediaQuery.sizeOf(context).height * 0.50,
      child: GridView.builder(
        itemCount: widget.listcartGridView.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final isFavourite = favoriteItems.contains(item);
          return Stack(
            children: [
              SizedBox(
                width: 150,
                child: Image.asset(widget.listcartGridView[index]['image']),
              ),
              Positioned(
                left: widget.listcartGridView[index]['favoriteLeft'],
                top: widget.listcartGridView[index]['favoriteTop'],
                right: widget.listcartGridView[index]['favoriteRight'],
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isFavourite) {
                        favoriteItems.remove(item);
                      } else {
                        favoriteItems.add(item);
                      }
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 20.sp,
                    color:
                        isFavourite ? const Color(0xffF77777) : AppColos.white,
                  ),
                ),
              ),
              Positioned(
                left: widget.listcartGridView[index]['leftTitle'],
                top: widget.listcartGridView[index]['topTitle'],
                child: Column(
                  children: [
                    TextWidget(
                      text: widget.listcartGridView[index]['title'],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 4),
                      width: 50,
                      height: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white38),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Color(0xffFFC107),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          TextWidget(
                            text: '4.5',
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          pattern: [
            const WovenGridTile(
              5 / 6,
              crossAxisRatio: 0.9,
              alignment: AlignmentDirectional.centerEnd,
            ),
            const WovenGridTile(1),
          ],
        ),
      ),
    );
  }
}

class CartIconWidget extends StatelessWidget {
  const CartIconWidget({
    super.key,
    required this.cartIcon,
  });

  final List<Map<String, dynamic>> cartIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 123,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: cartIcon[index]['onTap'],
                child: Container(
                  width: 112,
                  height: 90,
                  decoration: BoxDecoration(
                    color: cartIcon[index]['color'],
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Image.asset(cartIcon[index]['image']),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              TextWidget(
                text: cartIcon[index]['text'],
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ],
          );
        },
        itemCount: cartIcon.length,
        separatorBuilder: (context, index) => SizedBox(
          width: 15.w,
        ),
      ),
    );
  }
}
