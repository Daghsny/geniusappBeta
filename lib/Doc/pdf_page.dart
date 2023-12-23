import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DocDetailPage extends StatelessWidget {
  final Map<String, dynamic> doc;
  const DocDetailPage({super.key, required this.doc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doc['title']),
      ),
      body: SfPdfViewer.network(doc['docurl'])
          //     // 'https://docs.sfr.fr/guide/guide-box-plus-sfr.pdf',

          
    );
  }
}
