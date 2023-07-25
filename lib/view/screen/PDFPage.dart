import 'dart:io';

import 'package:flutter/material.dart';

import '../../helper/Global.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

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
          return pw.Padding(
            padding: const pw.EdgeInsets.all(10),
            child: pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
              children: [
                pw.Container(
                  margin: const pw.EdgeInsets.all(10),
                  height: 240,
                  width: double.infinity,
                  decoration: const pw.BoxDecoration(
                      color: PdfColors.blueGrey800,
                      boxShadow: [
                        pw.BoxShadow(
                          color: PdfColors.black,
                          blurRadius: 3,
                          spreadRadius: 2,
                        )
                      ]),
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    children: [
                      pw.Image(
                        image,
                        width: 100,
                        height: 100,
                      ),
                      pw.Text(
                        Global.companyName,
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey200,
                            fontWeight: pw.FontWeight.bold),
                      ),
                      pw.Text(
                        Global.tagLine,
                        style: const pw.TextStyle(color: PdfColors.blueGrey300),
                      ),
                    ],
                  ),
                ),
                pw.Container(
                  margin: const pw.EdgeInsets.all(10),
                  height: 240,
                  width: double.infinity,
                  decoration: const pw.BoxDecoration(
                      color: PdfColors.blueGrey100,
                      boxShadow: [
                        pw.BoxShadow(
                          color: PdfColors.grey,
                          blurRadius: 3,
                          spreadRadius: 2,
                        )
                      ]),
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.end,
                    children: [
                      pw.Row(
                        crossAxisAlignment: pw.CrossAxisAlignment.center,
                        children: [
                          pw.Container(
                            height: 20,
                            width: 20,
                            color: PdfColors.blueGrey900,
                          ),
                          pw.SizedBox(
                            width: 10,
                          ),
                          pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                Global.name,
                                style: pw.TextStyle(
                                    color: PdfColors.blueGrey700,
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 15),
                              ),
                              pw.Text(
                                Global.position,
                                style: const pw.TextStyle(
                                    color: PdfColors.blueGrey500),
                              ),
                            ],
                          ),
                          pw.Spacer(),
                          pw.Image(
                            image,
                            width: 50,
                          ),
                          pw.SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      pw.SizedBox(
                        height: 300,
                      ),
                      pw.Container(
                        margin: const pw.EdgeInsets.all(10),
                        width: double.infinity,
                        height: 80,
                        color: PdfColors.blueGrey900,
                        child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                          children: [
                            pw.Row(
                              children: [
                                pw.SizedBox(
                                  width: 3,
                                ),
                                // pw. Icon(
                                //    Icons.phone_android_outlined,
                                //    color: PdfColors.blueGrey300,
                                //  ),
                                // pw.SizedBox(
                                //   width: 6,
                                // ),

                                pw.Text(
                                  Global.contact,
                                  style: const pw.TextStyle(
                                      color: PdfColors.blueGrey100),
                                ),
                              ],
                            ),
                            pw.Row(
                              children: [
                                pw.SizedBox(
                                  width: 3,
                                ),
                                // pw. Icon(
                                //    Icons.email_outlined,
                                //    color: PdfColors.blueGrey300,
                                //  ),
                                //  pw.SizedBox(
                                //    width:6,
                                //  ),

                                pw.Text(
                                  Global.email,
                                  style: const pw.TextStyle(
                                      color: PdfColors.blueGrey100),
                                ),
                              ],
                            ),
                            pw.Row(
                              children: [
                                pw.SizedBox(
                                  width: 3,
                                ),
                                // pw. Icon(
                                //    Icons.location_on_outlined,
                                //    color: PdfColors.blueGrey300,
                                //  ),
                                //  pw.SizedBox(
                                //    width: 6,
                                //  ),
                                pw.Text(
                                  Global.add,
                                  style: const pw.TextStyle(
                                      color: PdfColors.blueGrey100),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final image = MemoryImage(
      File(Global.pic!.path).readAsBytesSync(),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: height * 0.27,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade800,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: image,
                    width: width * 0.15,
                    height: height / 10,
                  ),
                  Text(
                    Global.companyName,
                    style: TextStyle(
                        color: Colors.blueGrey.shade200,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    Global.tagLine,
                    style: TextStyle(color: Colors.blueGrey.shade300),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: height * 0.27,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.blueGrey.shade900,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Global.name,
                            style: TextStyle(
                                color: Colors.blueGrey.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            Global.position,
                            style: TextStyle(color: Colors.blueGrey.shade500),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image(
                        image: image,
                        width: width * 0.13,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: width,
                    height: height * 0.09,
                    color: Colors.blueGrey.shade900,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Icon(
                              Icons.phone_android_outlined,
                              color: Colors.blueGrey.shade300,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              Global.contact,
                              style: TextStyle(color: Colors.blueGrey.shade100),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Icon(
                              Icons.email_outlined,
                              color: Colors.blueGrey.shade300,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                Global.email,
                                style:
                                    TextStyle(color: Colors.blueGrey.shade100),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.blueGrey.shade300,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              Global.add,
                              style: TextStyle(color: Colors.blueGrey.shade100),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
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
