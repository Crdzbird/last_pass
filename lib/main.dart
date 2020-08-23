import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:last_pass/src/provider/form_notifier_provider.dart';
import 'package:last_pass/src/routes/routes.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [const Locale('en'), const Locale('es')],
      path: 'assets/locales',
      fallbackLocale: const Locale('es'),
      useOnlyLangCode: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FormNotifierProvider>(
          create: (context) => FormNotifierProvider(),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        title: 'ForgotPass',
        initialRoute: 'dashboard',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: generateRoutes,
      ),
    );
  }
}
