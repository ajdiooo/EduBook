import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switcher_button/switcher_button.dart';

import '../theme/theme_modal.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModal themeNotifier, child) {
      return Drawer(
        child: Material(
          color:
              themeNotifier.darkMode == false ? Colors.blue : Colors.grey[900],
          child: ListView(
            children: <Widget>[
              Container(
                padding: padding,
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    buildMenuItem(
                      text: 'Grade One',
                      icon: Icons.looks_one_outlined,
                      onClicked: () => selectedItem(context, 0),
                    ),
                    buildMenuItem(
                      text: 'Grade Two',
                      icon: Icons.looks_two_outlined,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    buildMenuItem(
                      text: 'Grade Three',
                      icon: Icons.looks_3_outlined,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    buildMenuItem(
                      text: 'Grade Four',
                      icon: Icons.looks_4_outlined,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    buildMenuItem(
                      text: 'Grade Five',
                      icon: Icons.looks_5_outlined,
                      onClicked: () => selectedItem(context, 4),
                    ),
                    buildMenuItem(
                      text: 'Grade Six',
                      icon: Icons.looks_6_outlined,
                      onClicked: () => selectedItem(context, 5),
                    ),
                    const SizedBox(height: 2),
                    Divider(color: Colors.white70),
                    const SizedBox(height: 2),
                    ListTile(
                      title: Text(
                        themeNotifier.darkMode ? 'Dark Mode' : 'Light Mode',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      leading: themeNotifier.darkMode
                          ? Icon(
                              Icons.dark_mode_outlined,
                              color: Colors.white,
                            )
                          : Icon(
                              Icons.light_mode_outlined,
                              color: Colors.white,
                            ),
                      trailing: SwitcherButton(
                        size: 45,
                        value: themeNotifier.darkMode ? false : true,
                        onChange: (value) {
                          themeNotifier.darkMode
                              ? themeNotifier.darkMode = false
                              : themeNotifier.darkMode = true;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    bool value = false,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color, fontSize: 18)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/grade-one');
        break;
      case 1:
        Navigator.pushNamed(context, '/grade-two');
        break;
      case 2:
        Navigator.pushNamed(context, '/grade-three');
        break;
      case 3:
        Navigator.pushNamed(context, '/grade-four');
        break;
      case 4:
        Navigator.pushNamed(context, '/grade-five');
        break;
      case 5:
        Navigator.pushNamed(context, '/grade-six');
        break;
    }
  }
}
