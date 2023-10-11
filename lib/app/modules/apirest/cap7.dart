import 'package:flutter/material.dart';

class ApiRest extends StatefulWidget {
  const ApiRest({super.key});

  @override
  State<ApiRest> createState() => _ApiRestState();
}

class _ApiRestState extends State<ApiRest> {
  final Empresa _facebook = Empresa(
    "Facebook",
    "Mark Zuckerberg",
    1000000000,
  );

  @override
  void initState() {
    super.initState();
    print(_facebook);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text(_facebook.name),
          Text(_facebook.own),
          Text(_facebook.annualIncome.toString()),
        ],
      )),
    );
  }
}

class Empresa {
  String name;
  String own;
  int annualIncome;

  Empresa(this.name, this.own, this.annualIncome);
}
