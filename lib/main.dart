import 'package:curso_flutter_n1/app/modules/apirest/cap7.dart';
import 'package:curso_flutter_n1/app/modules/apirest/cap8.dart';
import 'package:flutter/material.dart';
import 'package:curso_flutter_n1/app/modules/login/cap5.dart';
import 'package:curso_flutter_n1/app/modules/navigation/cap6.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Go to login'),
            ElevatedButton(
              onPressed: (() => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const Navigation()),
                    ),
                  )),
              child: const Text('Login'),
            ),
            const Text('Go to ApiRest'),
            ElevatedButton(
              onPressed: (() => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const ApiRest()),
                    ),
                  )),
              child: const Text('Api'),
            ),
            const Text('Go to Listas'),
            ElevatedButton(
              onPressed: (() => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const Listas()),
                    ),
                  )),
              child: const Text('Listas'),
            )
          ],
        ),
      ),
    );
  }
}