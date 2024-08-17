import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:modalbottomsheet/info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showModal() {
    showCupertinoModalBottomSheet(
        context: context,
        builder: (context) => InfoPage(),
        bounce: true,
        topRadius: Radius.circular(20));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          Center(
            child: FilledButton(
              onPressed: _showModal,
              child: Text('Open'),
            ),
          ),
        ],
      ),
    );
  }
}
