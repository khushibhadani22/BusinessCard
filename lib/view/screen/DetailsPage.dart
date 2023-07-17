import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../helper/Global.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text("Card WorkSpace"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('pdf');
              },
              icon: const Icon(
                Icons.picture_as_pdf_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: Global.cardKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.grey.shade400,
                            backgroundImage: (Global.photo == null)
                                ? null
                                : (FileImage(Global.photo!)),
                          ),
                          FloatingActionButton.small(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            onPressed: () async {
                              Global.image = await Global.picker
                                  .pickImage(source: ImageSource.gallery);
                              setState(() {
                                Global.photo = File(Global.image!.path);
                              });
                            },
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width / 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height / 20,
                            width: width / 3.7,
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter Your company name....";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.companyName =
                                      Global.companyNameController.text;
                                });
                              },
                              textInputAction: TextInputAction.next,
                              controller: Global.companyNameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Company Name",
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: width / 3.7,
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter Your tag line....";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.tagLine =
                                      Global.tagLineController.text;
                                });
                              },
                              textInputAction: TextInputAction.next,
                              controller: Global.tagLineController,
                              maxLines: 3,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Tag Line",
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: height / 30,
                  ),
                  SizedBox(
                    height: height / 20,
                    width: width / 2,
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Your name....";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          Global.name = Global.nameController.text;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      controller: Global.nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Your Name",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  SizedBox(
                    height: height / 20,
                    width: width / 2,
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Your position....";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          Global.position = Global.positionController.text;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      controller: Global.positionController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Location-link",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  SizedBox(
                    height: height / 20,
                    width: width / 2,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Your contact number....";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          Global.contact = Global.contactController.text;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      controller: Global.contactController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Contact Number",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  SizedBox(
                    height: height / 20,
                    width: width / 2,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Your email....";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          Global.email = Global.emailController.text;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      controller: Global.emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  SizedBox(
                    // height: height / 20,
                    width: width / 2,
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Your address....";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          Global.add = Global.addController.text;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      controller: Global.addController,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Address",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  SizedBox(
                    height: height / 20,
                    width: width / 2,
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Your social name....";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          Global.socialFB = Global.socialFbController.text;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      controller: Global.socialFbController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Social media profiles FaceBook",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  SizedBox(
                    height: height / 20,
                    width: width / 2,
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Your social name....";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          Global.socialIN = Global.socialInController.text;
                        });
                      },
                      textInputAction: TextInputAction.done,
                      controller: Global.socialInController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Social media profiles Instagram",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            if (Global.cardKey.currentState!.validate()) {
                              Global.cardKey.currentState!.save();
                              setState(() {
                                Global.company = false;
                                Global.pic = Global.photo;
                              });
                            }
                          },
                          child: const Text(
                            "SAVE",
                            style: TextStyle(color: Colors.black),
                          )),
                      OutlinedButton(
                          onPressed: () {
                            Global.cardKey.currentState!.reset();

                            Global.companyNameController.clear();
                            Global.tagLineController.clear();
                            Global.nameController.clear();
                            Global.contactController.clear();
                            Global.emailController.clear();
                            Global.addController.clear();
                            Global.positionController.clear();
                            Global.socialFbController.clear();
                            Global.socialInController.clear();

                            setState(() {
                              Global.companyName = '';
                              Global.tagLine = '';
                              Global.name = '';
                              Global.contact = '';
                              Global.email = '';
                              Global.add = '';
                              Global.position = '';
                              Global.socialFB = '';
                              Global.socialIN = '';
                              Global.photo = null;
                            });
                          },
                          child: const Text(
                            "CANCEL",
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
