import 'package:flutter/material.dart';

import '../widgets/navigation_drawer_widget.dart';

class GradeFive extends StatelessWidget {
  const GradeFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          // title: Text('GRADE ONE'),
          backgroundColor: Colors.transparent,
          elevation: 0, // 1
          foregroundColor: Colors.black,
        ),
        body: const Center(
          child: Text('GRADE FIVE PDFs'),
        ),
      );
}
