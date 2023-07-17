import 'package:flutter/material.dart';

import '../../helper/Global.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Business Card", style: Global.title),
                    Text("CARD", style: Global.subTitle),
                  ],
                ),
              )),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  const SizedBox(
                    height: 140,
                  ),
                  Image.asset(
                    'assets/image/cardlogo.png',
                    width: 250,
                  ),
                  const Text("Create A Business Card"),
                ],
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.of(context).pushNamed('details');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
