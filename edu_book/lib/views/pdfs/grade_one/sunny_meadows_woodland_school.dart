import 'package:edu_book/theme/theme_modal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SunnyMeadowsWoodlandSchool extends StatelessWidget {
  const SunnyMeadowsWoodlandSchool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Consumer(builder: (context, ThemeModal themeModal, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Sunny Meadows Woodland School",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Como'),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0, // 1
            foregroundColor: Colors.black,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () => Navigator.pop(context),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search_rounded),
                onPressed: () {},
              ),
            ],
          ),
          body: SfPdfViewer.asset(
            'assets/pdfs/grade_one/SUNNY_MEADOWS_WOODLAND_SCHOOL.pdf',
            pageLayoutMode: PdfPageLayoutMode.single,
            scrollDirection: PdfScrollDirection.horizontal,
          ),
        );
      });
}
