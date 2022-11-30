import 'package:flutter/material.dart';

class ContactFomr extends StatelessWidget {
  const ContactFomr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Contato"),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text("Cadastro de Contato"),
        ],
      ),
    );
  }
}
