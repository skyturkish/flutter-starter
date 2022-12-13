import 'package:flutter/material.dart';
import 'package:flutter_starter/core/init/notifier/theme_notifer.dart';
import 'package:provider/provider.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail '),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<ThemeNotifier>().changeTheme();
          },
          child: const Text('change Theme'),
        ),
      ),
    );
  }
}
