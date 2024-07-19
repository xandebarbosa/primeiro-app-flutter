import 'package:flutter/material.dart';
import 'package:primeiroappflutter/gerar_imagem/ia_gera_page.dart';
import 'package:primeiroappflutter/lista_herois/lista_herois_page.dart';

class GridItem extends StatelessWidget {
  final int index;
  const GridItem({ Key? key, required this.index }) : super(key: key);

  @override
  Widget build(BuildContext context){

    List<IconData> listaDeIcones = [
      Icons.flash_on,
      Icons.computer_rounded,
      Icons.museum,
      Icons.camera
    ];

    List<String> tituloDaLista = [
      "Listagem de Herois",
      "Inteligência Artificial",
      "Atrações Turisticas",
      "Criar Atração",
    ];

    IconData iconData = listaDeIcones[index];
    String titulo = tituloDaLista[index];

    return GestureDetector(
      onTap: () {
        switch (index) {
          case 0:
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListaHeroisPage()));
            break;
          case 1:
            Navigator.push(context, MaterialPageRoute(builder: (context) => IaGeraPage()));
            break;
          default:
            print("Opção inválida");
        }
      },
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, size: 40,),
            Text(titulo),
          ],),
      ),
    );
  }
}