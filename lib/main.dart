import 'package:flutter/material.dart';
import 'package:flutter_starter/core/constants/app/app_constants.dart';
import 'package:flutter_starter/core/init/cache/locale_manager.dart';
import 'package:flutter_starter/core/init/navigation/navigation_route.dart';
import 'package:flutter_starter/core/init/navigation/navigation_service.dart';
import 'package:flutter_starter/core/init/notifier/provider_list.dart';
import 'package:flutter_starter/core/init/notifier/theme_notifer.dart';
import 'package:flutter_starter/views/home_view.dart';
import 'package:provider/provider.dart';

void main() async {
  await _init();
  runApp(
    MultiProvider(
      providers: [
        ...ApplicationProvider.instance.dependItems,
      ],
      child: const App(),
    ),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleManager.preferencesInit();
}

/// App start with this class
class App extends StatelessWidget {
  /// No parameter needs to start application
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ThemeNotifier>().initTheme();
    return MaterialApp(
      title: ApplicationConstants.applicationName,
      theme: context.watch<ThemeNotifier>().currentTheme,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
