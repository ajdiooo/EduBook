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
                const SizedBox(height: 20),
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
                                      'assets/pdfs/grade_one/SUNNY_MEADOWS_WOODLAND_SCHOOL.jpg',
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
                                        'SUNNY MEADOWS WOODLAND SCHOOL',
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
                          '/grade-one/sunny-meadows-woodland-school.pdf');
                    }),
              ],
            ),
          ),
        ),
      );
}
