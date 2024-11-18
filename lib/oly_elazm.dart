import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/routing/named_router.dart';
import 'package:oly_elazm/core/routing/named_router_impl.dart';
import 'package:oly_elazm/core/theme/app_theme.dart';


class OlyElazm extends StatelessWidget {
  const OlyElazm({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: MaterialApp(
          themeAnimationDuration: const Duration(milliseconds: 700),
          themeAnimationCurve: Curves.easeInOutCubic,
          initialRoute: Routes.onboardingScreen,
          onGenerateRoute: appRouter.generateRoute,
          debugShowCheckedModeBanner: false,
          title: 'Oly Elazm',
          theme: AppTheme.lightThemeData,
        ),
      ),
    );
  }
}
