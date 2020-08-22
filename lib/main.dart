import 'package:flutter/material.dart';
import 'package:last_pass/src/provider/form_notifier_provider.dart';
import 'package:last_pass/src/routes/routes.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FormNotifierProvider>(
            create: (context) => FormNotifierProvider()),
      ],
      child: MaterialApp(
        title: 'LastPass',
        initialRoute: 'splash',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: generateRoutes,
      ),
    );
  }
}
