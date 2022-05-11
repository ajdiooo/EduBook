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
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }
}

// import 'dart:io';

// import 'package:flutter/foundation.dart'
//     show kIsWeb; // for checking whether running on Web or not
// import 'package:flutter/material.dart';
// import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// import 'package:pdf_render/pdf_render_widgets.dart';

// class SiMikaManika extends StatefulWidget {
//   const SiMikaManika({Key? key}) : super(key: key);

//   @override
//   _SiMikaManikaState createState() => _SiMikaManikaState();
// }

// class _SiMikaManikaState extends State<SiMikaManika> {
//   final controller = PdfViewerController();
//   TapDownDetails? _doubleTapDetails;

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: ValueListenableBuilder<Object>(
//               // The controller is compatible with ValueListenable<Matrix4> and you can receive notifications on scrolling and zooming of the view.
//               valueListenable: controller,
//               builder: (context, _, child) => Text(controller.isReady
//                   ? 'Page #${controller.currentPageNumber}'
//                   : 'Page -')),
//         ),
//         backgroundColor: Colors.grey,
//         body: GestureDetector(
//           // Supporting double-tap gesture on the viewer.
//           onDoubleTapDown: (details) => _doubleTapDetails = details,
//           onDoubleTap: () => controller.ready?.setZoomRatio(
//             zoomRatio: controller.zoomRatio * 1.5,
//             center: _doubleTapDetails!.localPosition,
//           ),
//           child: !kIsWeb && Platform.isMacOS
//               // Networking sample using flutter_cache_manager
//               ? PdfViewer.openFutureFile(
//                   // Accepting function that returns Future<String> of PDF file path
//                   () async => (await DefaultCacheManager().getSingleFile(
//                           'https://github.com/espresso3389/flutter_pdf_render/raw/master/example/assets/hello.pdf'))
//                       .path,
//                   viewerController: controller,
//                   onError: (err) => print(err),
//                   params: const PdfViewerParams(
//                     padding: 10,
//                     minScale: 1.0,
//                     // scrollDirection: Axis.horizontal,
//                   ),
//                 )
//               : PdfViewer.openAsset(
//                   'assets/pdfs/grade_one/SI_MIKA_MANIKA.pdf',
//                   viewerController: controller,
//                   onError: (err) => print(err),
//                   params: const PdfViewerParams(
//                     padding: 10,
//                     minScale: 1.0,
//                     // scrollDirection: Axis.horizontal,
//                   ),
//                 ),
//         ),
//         floatingActionButton: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: <Widget>[
//             FloatingActionButton(
//               child: const Icon(Icons.first_page),
//               onPressed: () => controller.ready?.goToPage(pageNumber: 1),
//             ),
//             FloatingActionButton(
//               child: const Icon(Icons.last_page),
//               onPressed: () =>
//                   controller.ready?.goToPage(pageNumber: controller.pageCount),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
