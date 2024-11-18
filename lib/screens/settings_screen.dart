import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import '../utils/theme_data.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Select Theme:', style: TextStyle(fontSize: 18)),
          ListTile(
            title: const Text('Theme A'),
            onTap: () => themeProvider.changeTheme(AppThemes.themeA),
          ),
          ListTile(
            title: const Text('Theme B'),
            onTap: () => themeProvider.changeTheme(AppThemes.themeB),
          ),
          ListTile(
            title: const Text('Theme C'),
            onTap: () => themeProvider.changeTheme(AppThemes.themeC),
          ),
          const Divider(),
          const Text('Select Font:', style: TextStyle(fontSize: 18)),
          ListTile(
            title: const Text('Roboto'),
            onTap: () => themeProvider.changeFont('Roboto'),
          ),
          ListTile(
            title: const Text('Lato'),
            onTap: () => themeProvider.changeFont('Lato'),
          ),
          ListTile(
            title: const Text('Montserrat'),
            onTap: () => themeProvider.changeFont('Montserrat'),
          ),
        ],
      ),
    );
  }
}
