import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:oly_elazm/core/routing/named_router_impl.dart';
import 'package:oly_elazm/oly_elazm.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ar'),
      ],
      path: 'assets/translations',
      child: OlyElazm(
        appRouter: AppRouter(),
      ),
    ),
  );
}
