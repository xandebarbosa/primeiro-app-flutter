import 'package:flutter/material.dart';
import 'package:primeiroappflutter/menu/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Me primeiro App Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget { 
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _login() {
    print("clicou aqui!!");
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => MenuPage(),
    ),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
        backgroundColor: const Color.fromARGB(255, 27, 123, 201),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 10, 10, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.compare_outlined, color: Colors.redAccent, size: 60,), // Ícone acima do TextField
                  const SizedBox(height: 30), // Espaçamento entre o ícone e o TextField

            const TextField(
              decoration: 
                InputDecoration(
                  labelText: "Usuário", 
                  labelStyle: TextStyle(color: Colors.white), // Cor do rótulo
                  border: OutlineInputBorder(),
                  // Personalizando a cor da borda
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                ),
          ),
          const SizedBox(
            height: 20,
          ),
            const TextField(
              obscureText: true,
              decoration: 
                InputDecoration(
                  labelText: "Senha", 
                  labelStyle: TextStyle(color: Colors.white), // Cor do rótulo
                  border: OutlineInputBorder(),
                  // Personalizando a cor da borda
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _login, 
              child: const Text("Entrar"),
              ),
          )
        ],
        )
        ),
      )
     );
  }
}
