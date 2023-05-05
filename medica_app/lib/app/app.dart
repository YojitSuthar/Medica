import 'package:common/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/route_manager.dart';
import 'package:medica_app/screens/screens.dart';
import '../provider/provider.dart';
import '../resources/import_resources.dart';


class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ButtonProvider()),
        ChangeNotifierProvider(create: (context) => DropDown()),
        ChangeNotifierProvider(create: (context) => PickDateProvider()),
        ChangeNotifierProvider(create: (context) => HourProvider()),
        ChangeNotifierProvider(create: (context) => WebViewLoading()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            home:  const SplashScreen(),
            getPages: routes,
          );
        },
      ),
    );
  }
}