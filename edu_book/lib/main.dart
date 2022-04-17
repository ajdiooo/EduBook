import 'package:edu_book/theme/theme_modal.dart';
import 'package:edu_book/views/grade_five.dart';
import 'package:edu_book/views/grade_four.dart';
import 'package:edu_book/views/grade_one.dart';
import 'package:edu_book/views/grade_six.dart';
import 'package:edu_book/views/grade_three.dart';
import 'package:edu_book/views/grade_two.dart';
import 'package:edu_book/views/homepage.dart';
import 'package:edu_book/views/pdfs/grade_one/sunny_meadows_woodland_school.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeModal(),
        child: Consumer(builder: (context, ThemeModal themeModal, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "TEST",
            theme: themeModal.darkMode ? ThemeData.dark() : ThemeData.light(),
            // home: Homepage(),
            initialRoute: '/',
            routes: {
              '/': (context) => const Homepage(),

              // list of pdfs per grade
              '/grade-one': (context) => const GradeOne(),
              '/grade-two': (context) => const GradeTwo(),
              '/grade-three': (context) => const GradeThree(),
              '/grade-four': (context) => const GradeFour(),
              '/grade-five': (context) => const GradeFive(),
              '/grade-six': (context) => const GradeSix(),

              // specific pdfs

              // grade one
              '/grade-one/sunny-meadows-woodland-school.pdf': (context) =>
                  const SunnyMeadowsWoodlandSchool(),
            },
          );
        }));
  }
}
