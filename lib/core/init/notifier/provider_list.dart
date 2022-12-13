import 'package:flutter_starter/core/init/notifier/theme_notifer.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ApplicationProvider {
  ApplicationProvider._init();

  static final ApplicationProvider _instance = ApplicationProvider._init();

  static ApplicationProvider get instance => _instance;

  List<SingleChildWidget> singleItems = [];

  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
    ),
  ];

  List<SingleChildWidget> uiChangesItems = [];
}
