import 'package:edu_book/widgets/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          // title: Text('HOMEPAGE'),
          backgroundColor: Colors.transparent,
          elevation: 0, // 1
          foregroundColor: Colors.black,
        ),
        body: const Center(
          child: Text('Homepage'),
        ),
      );
}
