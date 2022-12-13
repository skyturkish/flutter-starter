import 'package:flutter/material.dart';
import 'package:flutter_starter/core/constants/navigation/navigation_constants.dart';
import 'package:flutter_starter/core/init/navigation/navigation_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView Bar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NavigationService.instance.navigateToPage(
              path: NavigationConstants.detailView,
            );
          },
          child: const Text('Detail Page'),
        ),
      ),
    );
  }
}
