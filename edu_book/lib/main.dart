import 'package:edu_book/misc/splash_screen.dart';
import 'package:edu_book/theme/theme_modal.dart';
import 'package:edu_book/views/grade_five.dart';
import 'package:edu_book/views/grade_four.dart';
import 'package:edu_book/views/grade_one.dart';
import 'package:edu_book/views/grade_six.dart';
import 'package:edu_book/views/grade_three.dart';
import 'package:edu_book/views/grade_two.dart';
import 'package:edu_book/views/homepage.dart';
// import 'package:edu_book/views/homepage.dart';
import 'package:edu_book/views/pdfs/homepage/ang_matalik_na_magkaibigan.dart';
import 'package:edu_book/views/pdfs/homepage/ida_the_fish.dart';
import 'package:edu_book/views/pdfs/homepage/pams_cat.dart';
import 'package:edu_book/views/pdfs/homepage/si_idang_isda.dart';
import 'package:edu_book/views/pdfs/homepage/si_kala_kalabaw.dart';
import 'package:edu_book/views/pdfs/homepage/si_mika_manika.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const EduBook());
}

class EduBook extends StatefulWidget {
  const EduBook({Key? key}) : super(key: key);

  @override
  State<EduBook> createState() => _EduBookState();
}

class _EduBookState extends State<EduBook> {
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
              '/': (context) => const SplashScreen(),
              '/homepage': (context) => const Homepage(),              

              // list of pdfs per grade
              '/grade-one': (context) => const GradeOne(),
              '/grade-two': (context) => const GradeTwo(),
              '/grade-three': (context) => const GradeThree(),
              '/grade-four': (context) => const GradeFour(),
              '/grade-five': (context) => const GradeFive(),
              '/grade-six': (context) => const GradeSix(),

              // specific pdfs

              // grade one
              '/homepage/ang-matalik-na-magkaibigan.pdf': (context) =>
                  const AngMatalikNaMagkaibigan(
                    title: 'Ang Matalik na Magkaibigan',
                  ),
              '/homepage/ida-the-fish.pdf': (context) => const IdaTheFish(
                    title: 'Ida the Fish',
                  ),
              '/homepage/pam\'s-cat.pdf': (context) => const PamsCat(
                    title: 'Pam\'s Cat',
                  ),
              '/homepage/si-idang-isda.pdf': (context) => const SiIdangIsda(
                    title: 'Si Idang Isda',
                  ),
              '/homepage/si-kala-kalabaw.pdf': (context) =>
                  const SiKalaKalabaw(
                    title: 'Si Kala Kalabaw',
                  ),
              '/homepage/si-mika-manika.pdf': (context) => const SiMikaManika(
                    title: 'Si Mika Manika',
                  ),
            },
          );
        }));
  }
}
