import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:edu_book/misc/load_file_on_ram.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SiMikaManika extends StatefulWidget {
  final String title;
  const SiMikaManika({Key? key, required this.title}) : super(key: key);

  @override
  State<SiMikaManika> createState() => _SiMikaManikaState();
}

class _SiMikaManikaState extends State<SiMikaManika>
    with WidgetsBindingObserver {
  File? file;
  var pdfViewerKey = UniqueKey();
  PDFViewController? pdfViewController;
  int? currentPage;

  void loadPdf() async {
    // pdfFlePath = await downloadAndSavePdf();
    File file = await LoadFileOnRam.createFileFromAssets(
        'assets/pdfs/grade_one/SI_MIKA_MANIKA.pdf');
    setState(() {
      this.file = file;
    });
  }

  @override
  void initState() {
    super.initState();
    loadPdf();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      var currentPage = await pdfViewController?.getCurrentPage();
      print('currentPage $currentPage');
      Future.delayed(const Duration(milliseconds: 250), () {
        setState(() {
          pdfViewerKey = UniqueKey();
        });

        Future.delayed(const Duration(milliseconds: 300), () {
          if (currentPage != null) {
            pdfViewController?.setPage(currentPage);
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: false,
      ),
      body: GestureDetector(
        onTap: () => print('tap'),
        child: PDF(
          enableSwipe: true,
          swipeHorizontal: true,
          onError: (error) {
            print('error $error');
          },
          onPageChanged: (int? page, int? totalPages) {
            print('current page ${page! + 1} of $totalPages');
            Fluttertoast.showToast(
                msg: 'Page  ${page + 1} of $totalPages',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.white54,
                textColor: Colors.black54,
                fontSize: 16.0);
          },
          onViewCreated: (PDFViewController controller) {
            pdfViewController = controller;
          },
          gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
            Factory<OneSequenceGestureRecognizer>(
                () => EagerGestureRecognizer())
          },
        ).fromAsset('assets/pdfs/grade_one/SI_MIKA_MANIKA.pdf',
            key: pdfViewerKey, errorWidget: (error) {
          print(error);
          return Center(child: Text('error $error'));
        }),
      ),
    );
  }
}