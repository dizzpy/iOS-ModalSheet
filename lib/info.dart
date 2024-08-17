import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  void _showEmailAlert(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Enter Your Email'),
          content: Column(
            children: [
              SizedBox(height: 16),
              CupertinoTextField(
                placeholder: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
            ],
          ),
          actions: [
            CupertinoDialogAction(
              child: Text('Reset Password'),
              onPressed: () {
                // Handle saving the email
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text(
                    'Lorum Information Information Information Lorum Information Information Information Lorum Information Information InformationLorum Information Information InformationLorum Information Information InformationLorum Information Information InformationLorum Information Information InformationLorum Information Information InformationLorum Information Information InformationLorum Information Information InformationLorum Information Information InformationLorum Information Information InformationLorum Inform'),
                TextField(),
                TextField(),
                TextField(),
                FilledButton(
                  onPressed: () => _showEmailAlert(context),
                  child: Text('hello world'),
                ),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
                TextField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
