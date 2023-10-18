import 'package:flutter/material.dart';
import 'package:flutter_application_5/components/clavier.dart';
import 'package:flutter_application_5/components/image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 103, 222)),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 243, 250),
      ),
      home: const MyHomePage(title: 'Clicmage'),
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
  String stock="0";
  
  void changestock(String newStock) {
    setState(() {
      stock=newStock;
    });
  }

  bool isImage = false;

  void changeState() {
    setState(() {
      isImage = !isImage;
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: isImage == false ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(stock),
          ClavierComponent(onPressed: changestock)
        ],
      ) : ImageComponents(index: stock),
      floatingActionButton: FloatingActionButton(
        onPressed: changeState,
        backgroundColor: const Color.fromARGB(255, 251, 255, 145),
        tooltip: 'Increment',
        child: const Icon(Icons.image),
      ),
    );
  }
}
