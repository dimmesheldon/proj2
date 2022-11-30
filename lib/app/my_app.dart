// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:proj2/app/view/contact_form.dart';
import 'package:proj2/app/view/contact_list.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const HOME = '/';
  static const CONTACT_FORM = 'contact-form';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu programa',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        HOME: (context) => ContactList(),
        CONTACT_FORM: (context) => const ContactFomr(),
      },
    );
  }
}
