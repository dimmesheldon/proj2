import 'package:flutter/material.dart';
import 'package:proj2/app/my_app.dart';

class ContactList extends StatelessWidget {
  ContactList({super.key});
  final lista = [
    {
      'nome': 'Dimme Sheldon',
      'telefone': '(99) 999-888',
      'avatar':
          'https://pixabay.com/pt/vectors/homem-de-negocios-macho-o-neg%c3%b3cio-310819/'
    },
    {
      'nome': 'Eliane Xavier',
      'telefone': '(99) 8454-522',
      'avatar':
          'https://pixabay.com/pt/vectors/professora-f%c3%aamea-mulher-garota-295387/'
    },
    {
      'nome': 'Isabela Alencar',
      'telefone': '(99) 654-585',
      'avatar':
          'https://pixabay.com/pt/illustrations/mulher-cyberpunk-beleza-retrato-5854291/'
    },
    {
      'nome': 'Elisa Alencar',
      'telefone': '(99) 54512-52',
      'avatar':
          'https://pixabay.com/pt/illustrations/mulher-g%c3%b3tico-cabelo-branco-avatar-7413937/'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Contatos'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        //itemBuilder constroi os intens da listagit
        itemBuilder: (context, i) {
          var contato = lista[i];
          return ListTile(
            title: Text(contato['nome']!),
            subtitle: Text(contato['telefone']!),
          );
        },
      ),
    );
  }
}
