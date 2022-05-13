import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/theme_modal.dart';
import '../widgets/navigation_drawer_widget.dart';

class GradeFive extends StatelessWidget {
  const GradeFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Consumer(builder: (context, ThemeModal themeNotifier, child) {
        return Scaffold(
          drawer: NavigationDrawerWidget(),
          appBar: AppBar(
            title: Text(
              'Grade Five E-Books',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Como',
                color: themeNotifier.darkMode ? Colors.white : Colors.grey[850],
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0, // 1
            foregroundColor:
                themeNotifier.darkMode ? Colors.white60 : Colors.grey[850],
          ),
          body: const Center(
            child: Text('GRADE FIVE PDFs'),
          ),
        );
      });
}
