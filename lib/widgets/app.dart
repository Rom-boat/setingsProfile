import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/settings_widget.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingsWidget(),
    );
  }
}
