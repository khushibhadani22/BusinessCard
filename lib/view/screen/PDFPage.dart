import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../helper/Global.dart';

class PDF extends StatefulWidget {
  const PDF({Key? key}) : super(key: key);

  @override
  State<PDF> createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  final pdf = pw.Document();
  @override
  void initState() {
    final image = pw.MemoryImage(
      File(Global.pic!.path).readAsBytesSync(),
    );
    super.initState();
    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            children: [
              pw.Container(
                height: 150,
                width: 450,
                child: pw.Column(
                  children: [
                    pw.Row(
                      children: [
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(top: 10, right: 10),
                          child: pw.Container(
                            height: 120,
                            width: 120,
                            child: pw.Image(image, fit: pw.BoxFit.cover),
                            decoration: const pw.BoxDecoration(),
                          ),
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(right: 5),
                          child: pw.SizedBox(
                            height: 120,
                            width: 260,
                            child: pw.Column(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceAround,
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 5),
                                      child: pw.Text(Global.companyName,
                                          style:
                                              const pw.TextStyle(fontSize: 13)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    final image = MemoryImage(
      File(Global.pic!.path).readAsBytesSync(),
    );
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(1),
            child: Image(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(Global.companyName,
                style: const TextStyle(color: Colors.white, fontSize: 13)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff235566),
        onPressed: () async {
          Directory? tempDir = await getExternalStorageDirectory();

          File locate = File('${tempDir!.path}/business.pdf');

          await locate.writeAsBytes(await pdf.save());
        },
        child: const Icon(
          Icons.download,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
