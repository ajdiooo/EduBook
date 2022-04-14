import 'package:flutter/material.dart';

class GradeTwo extends StatelessWidget {
  const GradeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          // title: Text('GRADE TWO'),
          backgroundColor: Colors.transparent,
          elevation: 0, // 1
          foregroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: const Center(
          child: Text('GRADE TWO PDFs'),
        ),
      );
}
