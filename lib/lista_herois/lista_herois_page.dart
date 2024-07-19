import 'package:flutter/material.dart';
import 'package:primeiroappflutter/api/api_service.dart';

class ListaHeroisPage extends StatefulWidget {
  const ListaHeroisPage({ Key? key }) : super(key: key);

  @override
  _ListaHeroisPageState createState() => _ListaHeroisPageState();
}

class _ListaHeroisPageState extends State<ListaHeroisPage> {
  void initState() {
    super.initState();
    ApiService().buscarHerois();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Lista de Herois"),
      ),
      
    );
  }
}