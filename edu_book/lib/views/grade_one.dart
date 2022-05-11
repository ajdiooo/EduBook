import 'package:flutter/material.dart';

import '../widgets/navigation_drawer_widget.dart';

class GradeOne extends StatelessWidget {
  const GradeOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          // title: Text('GRADE ONE'),
          backgroundColor: Colors.transparent,
          elevation: 0, // 1
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Grade One E-Books',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Como'),
                ),
                const SizedBox(height: 25),
                InkWell(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21.0),
                        ),
                        color: Colors.white70,
                        elevation: 10,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width * .28,
                                    maxHeight:
                                        MediaQuery.of(context).size.width * .28,
                                  ),
                                  child: Image.asset(
                                      'assets/pdfs/grade_one/ANG_MATALIK_NA_MAGKAIBIGAN.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 18, 18, 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'Ang Matalik na Magkaibigan\n(The Bestfriends)',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Como'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/grade-one/ang-matalik-na-magkaibigan.pdf');
                    }),
                const SizedBox(height: 10),
                InkWell(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21.0),
                        ),
                        color: Colors.white70,
                        elevation: 10,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width * .28,
                                    maxHeight:
                                        MediaQuery.of(context).size.width * .28,
                                  ),
                                  child: Image.asset(
                                      'assets/pdfs/grade_one/IDA_THE_FISH.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 18, 18, 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'Ida the Fish',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Como'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/grade-one/ida-the-fish.pdf');
                    }),
                const SizedBox(height: 10),
                InkWell(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21.0),
                        ),
                        color: Colors.white70,
                        elevation: 10,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width * .28,
                                    maxHeight:
                                        MediaQuery.of(context).size.width * .28,
                                  ),
                                  child: Image.asset(
                                      'assets/pdfs/grade_one/PAMS_CAT.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 18, 18, 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'Pam\'s Cat',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Como'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/grade-one/pam\'s-cat.pdf');
                    }),
                const SizedBox(height: 10),
                InkWell(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21.0),
                        ),
                        color: Colors.white70,
                        elevation: 10,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width * .28,
                                    maxHeight:
                                        MediaQuery.of(context).size.width * .28,
                                  ),
                                  child: Image.asset(
                                      'assets/pdfs/grade_one/SI_IDANG_ISDA.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 18, 18, 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'Si Idang Isda',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Como'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/grade-one/si-idang-isda.pdf');
                    }),
                const SizedBox(height: 10),
                InkWell(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21.0),
                        ),
                        color: Colors.white70,
                        elevation: 10,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width * .28,
                                    maxHeight:
                                        MediaQuery.of(context).size.width * .28,
                                  ),
                                  child: Image.asset(
                                      'assets/pdfs/grade_one/SI_KALA_KALABAW.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 18, 18, 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'Si Kala kalabaw\n(A Calf Named Cala)',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Como'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/grade-one/si-kala-kalabaw.pdf');
                    }),
                const SizedBox(height: 10),
                InkWell(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21.0),
                        ),
                        color: Colors.white70,
                        elevation: 10,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width * .28,
                                    maxHeight:
                                        MediaQuery.of(context).size.width * .28,
                                  ),
                                  child: Image.asset(
                                      'assets/pdfs/grade_one/SI_MIKA_MANIKA.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 18, 18, 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'Si Mika Manika',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Como'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/grade-one/si-mika-manika.pdf');
                    }),
              ],
            ),
          ),
        ),
      );
}
