// import 'package:get/get.dart';
// import 'package:get_routes/pages/home.page.dart';
// import 'package:get_routes/pages/second.page.dart';
// import 'package:get_routes/pages/third.page.dart';
//
// appRoutes() => [
//   GetPage(
//     name: '/home',
//     page: () => HomePage(),
//     transition: Transition.leftToRightWithFade,
//     transitionDuration: Duration(milliseconds: 500),
//   ),
//   GetPage(
//     name: '/second',
//     page: () => SecondPage(),
//     middlewares: [MyMiddelware()],
//     transition: Transition.leftToRightWithFade,
//     transitionDuration: Duration(milliseconds: 500),
//   ),
//   GetPage(
//     name: '/third',
//     page: () => ThirdPage(),
//     middlewares: [MyMiddelware()],
//     transition: Transition.leftToRightWithFade,
//     transitionDuration: Duration(milliseconds: 500),
//   ),
// ];
//
// class MyMiddelware extends GetMiddleware {
//   @override
//   GetPage? onPageCalled(GetPage? page) {
//     print(page?.name);
//     return super.onPageCalled(page);
//   }
// }