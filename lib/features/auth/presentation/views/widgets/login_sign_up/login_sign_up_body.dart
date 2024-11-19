import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/features/auth/presentation/views/widgets/login_sign_up/login_sign_up_header.dart';
import 'package:oly_elazm/features/auth/presentation/views/widgets/login_sign_up/login_sign_up_tab_bar.dart';
import 'package:oly_elazm/features/auth/presentation/views/widgets/login_sign_up/login_sign_up_tab_bar_view.dart';

class LoginSignUpBody extends StatelessWidget {
  const LoginSignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const LoginSignUpHeader(),
        20.verticalSpace,
        const Expanded(
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                LoginSignUpTabBar(),
                LoginSignUpTabBarView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}