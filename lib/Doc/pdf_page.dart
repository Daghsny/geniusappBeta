import 'package:flutter/material.dart';
import 'package:geniusapp/Model/lesson.dart';
import 'package:geniusapp/RemoteServices/remote_services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DocDetailPage extends StatelessWidget {
  final FilesLesson doc;
  const DocDetailPage({super.key, required this.doc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(doc.fileName),
        ),
        body: SfPdfViewer.network(
          '${RemoteServices.baseUrl}${doc.filePath.url}',
        )
        //     // 'https://docs.sfr.fr/guide/guide-box-plus-sfr.pdf',

        );
  }
}
