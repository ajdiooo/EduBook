// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';

// import 'package:edu_book/misc/load_file_on_ram.dart';
// import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

// class IdaTheFish extends StatefulWidget {
//   final String title;
//   const IdaTheFish({Key? key, required this.title}) : super(key: key);

//   @override
//   State<IdaTheFish> createState() => _IdaTheFishState();
// }

// class _IdaTheFishState extends State<IdaTheFish> with WidgetsBindingObserver {
//   File? file;
//   var pdfViewerKey = UniqueKey();
//   PDFViewController? pdfViewController;
//   int? currentPage;

//   void loadPdf() async {
//     // pdfFlePath = await downloadAndSavePdf();
//     File file = await LoadFileOnRam.createFileFromAssets(
//         'assets/pdfs/grade_one/IDA_THE_FISH.pdf');
//     setState(() {
//       this.file = file;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     loadPdf();
//     WidgetsBinding.instance.addObserver(this);
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     super.dispose();
//   }

//   @override
//   void didChangeMetrics() async {
//     if (defaultTargetPlatform == TargetPlatform.android) {
//       var currentPage = await pdfViewController?.getCurrentPage();
//       print('currentPage $currentPage');
//       Future.delayed(const Duration(milliseconds: 250), () {
//         setState(() {
//           pdfViewerKey = UniqueKey();
//         });

//         Future.delayed(const Duration(milliseconds: 300), () {
//           if (currentPage != null) {
//             pdfViewController?.setPage(currentPage);
//           }
//         });
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: AppBar(
//         title: Text(widget.title),
//         centerTitle: false,
//       ),
//       body: GestureDetector(
//         onTap: () => print('tap'),
//         child: PDF(
//           fitPolicy: FitPolicy.BOTH,
//           enableSwipe: true,
//           swipeHorizontal: true,
//           pageFling: false,
//           onError: (error) {
//             print('error $error');
//           },
//           onPageChanged: (int? page, int? totalPages) {
//             print('current page ${page! + 1} of $totalPages');
//           },
//           onViewCreated: (PDFViewController controller) {
//             pdfViewController = controller;
//           },
//           gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
//             Factory<OneSequenceGestureRecognizer>(
//                 () => EagerGestureRecognizer())
//           },
//         ).fromAsset('assets/pdfs/grade_one/IDA_THE_FISH.pdf', key: pdfViewerKey,
//             errorWidget: (error) {
//           print(error);
//           return Center(child: Text('error $error'));
//         }),
//       ),
//     );
//   }
// }
import 'dart:async';

import 'package:edu_book/theme/theme_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:provider/provider.dart';

class IdaTheFish extends StatelessWidget {
  IdaTheFish({Key? key, required this.pdfAssetPath}) : super(key: key);
  final String pdfAssetPath;
  final Completer<PDFViewController> _pdfViewController =
      Completer<PDFViewController>();
  final StreamController<String> _pageCountController =
      StreamController<String>();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModal themeNotifier, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Ida the Fish'),
          actions: <Widget>[
            StreamBuilder<String>(
                stream: _pageCountController.stream,
                builder: (_, AsyncSnapshot<String> snapshot) {
                  if (snapshot.hasData) {
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Text(snapshot.data!),
                      ),
                    );
                  }
                  return const SizedBox();
                }),
          ],
        ),
        body: PDF(
          enableSwipe: true,
          swipeHorizontal: true,
          autoSpacing: false,
          pageFling: false,
          onPageChanged: (int? current, int? total) =>
              _pageCountController.add('${current! + 1} / $total'),
          onViewCreated: (PDFViewController pdfViewController) async {
            _pdfViewController.complete(pdfViewController);
            final int currentPage =
                await pdfViewController.getCurrentPage() ?? 0;
            final int? pageCount = await pdfViewController.getPageCount();
            _pageCountController.add('${currentPage + 1} - $pageCount');
          },
        ).fromAsset(
          pdfAssetPath,
          errorWidget: (dynamic error) => Center(child: Text(error.toString())),
        ),
        floatingActionButton: FutureBuilder<PDFViewController>(
          future: _pdfViewController.future,
          builder: (_, AsyncSnapshot<PDFViewController> snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: FloatingActionButton(
                      backgroundColor: themeNotifier.darkMode
                          ? Colors.grey[850]
                          : Colors.lightBlue,
                      heroTag: '<',
                      child: const Text(
                        '<',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Como'),
                      ),
                      onPressed: () async {
                        final PDFViewController pdfController = snapshot.data!;
                        final int currentPage =
                            (await pdfController.getCurrentPage())! - 1;
                        if (currentPage >= 0) {
                          await pdfController.setPage(currentPage);
                        }
                      },
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: themeNotifier.darkMode
                        ? Colors.grey[850]
                        : Colors.lightBlue,
                    heroTag: '>',
                    child: const Text(
                      '>',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Como'),
                    ),
                    onPressed: () async {
                      final PDFViewController pdfController = snapshot.data!;
                      final int currentPage =
                          (await pdfController.getCurrentPage())! + 1;
                      final int numberOfPages =
                          await pdfController.getPageCount() ?? 0;
                      if (numberOfPages > currentPage) {
                        await pdfController.setPage(currentPage);
                      }
                    },
                  ),
                ],
              );
            }
            return const SizedBox();
          },
        ),
      );
    });
  }
}
