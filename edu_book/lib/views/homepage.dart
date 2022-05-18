import 'package:edu_book/theme/theme_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../widgets/navigation_drawer_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          bool willLeave = false;
          // show the confirm dialog
          await showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    title: const Text('Are you sure want to leave?'),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            willLeave = true;
                            SystemChannels.platform
                                .invokeMethod('SystemNavigator.pop');
                          },
                          child: const Text('Yes')),
                      TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('No'))
                    ],
                  ));
          return willLeave;
        },
        child: Consumer(builder: (context, ThemeModal themeNotifier, child) {
          return Scaffold(
            drawer: NavigationDrawerWidget(),
            appBar: AppBar(
              title: Text(
                'Homepage',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Como',
                  color:
                      themeNotifier.darkMode ? Colors.white : Colors.grey[850],
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0, // 1
              foregroundColor:
                  themeNotifier.darkMode ? Colors.white60 : Colors.grey[850],
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    InkWell(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
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
                                    padding: const EdgeInsets.all(12.0),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                .28,
                                        maxHeight:
                                            MediaQuery.of(context).size.width *
                                                .28,
                                      ),
                                      child: Image.asset(
                                          'assets/pdfs/grade_one/ANG_MATALIK_NA_MAGKAIBIGAN.jpg',
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 18, 18, 18),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                          Navigator.pushNamed(context,
                              '/homepage/ang-matalik-na-magkaibigan.pdf');
                        }),
                    const SizedBox(height: 5),
                    InkWell(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
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
                                    padding: const EdgeInsets.all(12.0),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                .28,
                                        maxHeight:
                                            MediaQuery.of(context).size.width *
                                                .28,
                                      ),
                                      child: Image.asset(
                                          'assets/pdfs/grade_one/IDA_THE_FISH.jpg',
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 18, 18, 18),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                              context, '/homepage/ida-the-fish.pdf');
                        }),
                    const SizedBox(height: 5),
                    InkWell(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
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
                                    padding: const EdgeInsets.all(12.0),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                .28,
                                        maxHeight:
                                            MediaQuery.of(context).size.width *
                                                .28,
                                      ),
                                      child: Image.asset(
                                          'assets/pdfs/grade_one/PAMS_CAT.jpg',
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 18, 18, 18),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                          Navigator.pushNamed(
                              context, '/homepage/pam\'s-cat.pdf');
                        }),
                    const SizedBox(height: 5),
                    InkWell(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
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
                                    padding: const EdgeInsets.all(12.0),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                .28,
                                        maxHeight:
                                            MediaQuery.of(context).size.width *
                                                .28,
                                      ),
                                      child: Image.asset(
                                          'assets/pdfs/grade_one/SI_IDANG_ISDA.jpg',
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 18, 18, 18),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                              context, '/homepage/si-idang-isda.pdf');
                        }),
                    const SizedBox(height: 5),
                    InkWell(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
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
                                    padding: const EdgeInsets.all(12.0),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                .28,
                                        maxHeight:
                                            MediaQuery.of(context).size.width *
                                                .28,
                                      ),
                                      child: Image.asset(
                                          'assets/pdfs/grade_one/SI_KALA_KALABAW.jpg',
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 18, 18, 18),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                              context, '/homepage/si-kala-kalabaw.pdf');
                        }),
                    const SizedBox(height: 5),
                    InkWell(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
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
                                    padding: const EdgeInsets.all(12.0),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                .28,
                                        maxHeight:
                                            MediaQuery.of(context).size.width *
                                                .28,
                                      ),
                                      child: Image.asset(
                                          'assets/pdfs/grade_one/SI_MIKA_MANIKA.jpg',
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 18, 18, 18),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                              context, '/homepage/si-mika-manika.pdf');
                        }),
                  ],
                ),
              ),
            ),
          );
        }),
      );
}
