import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/app_routers/go_routers.dart';
import 'view/screen/add_card/add_card.dart';
import 'view/screen/add_passenger/add_passenger.dart';
import 'view/screen/add_passengers/add_passengers.dart';
import 'view/screen/booking_flight/booking_flight.dart';
import 'view/screen/booking_hotel/booking_hotel.dart';
import 'view/screen/checkkout_flight/checkkout_flight.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      tools: const [...DevicePreview.defaultTools],
      builder: (context) {
        return const MyApp();
      },
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) => ScreenUtilInit(
//         designSize: const Size(411, 812),
//         minTextAdapt: true,
//         splitScreenMode: true,
//         builder: (context, child) => MaterialApp.router(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             fontFamily: GoogleFonts.rubik().fontFamily,
//           ),
//           routerConfig: allScreens,
//         ),
//       );
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(411, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: GoogleFonts.rubik().fontFamily,
          ),
          home: CheckkoutFlight(),
        ),
      );
}
