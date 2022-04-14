import 'package:flutter/material.dart';

class GradeOne extends StatelessWidget {
  const GradeOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          // title: Text('GRADE ONE'),
          backgroundColor: Colors.transparent,
          elevation: 0, // 1
          foregroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: const Center(
          child: Text('GRADE ONE PDFs'),
        ),
      );
}
