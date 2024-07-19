import 'package:flutter/material.dart';

class IaGeraPage extends StatefulWidget {
  const IaGeraPage({ Key? key }) : super(key: key);

  @override
  _IaGeraPageState createState() => _IaGeraPageState();
}

class _IaGeraPageState extends State<IaGeraPage> {
  TextEditingController _tfImageGerar = TextEditingController();

  void _gerarImagem() {
    print(_tfImageGerar.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Gerar Imagem IA"),
      ),
      backgroundColor: const Color.fromRGBO(0, 247, 255, 1),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _tfImageGerar,
              decoration: 
              const InputDecoration(
                labelText: "Digite o que você deseja gerar",
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
                  // Personalizando a cor da borda
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(13, 45, 72, 1),
                foregroundColor: Colors.white,                
              ),
              onPressed: _gerarImagem, 
              child: const Text("Gerar"),
              ),
          )
          ],
          ),
          ),
      ),
    );
  }
}