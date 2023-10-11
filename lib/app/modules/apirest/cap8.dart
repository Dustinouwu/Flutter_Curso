import 'package:flutter/material.dart';

class Listas extends StatefulWidget {
  const Listas({super.key});

  @override
  State<Listas> createState() => _ListasState();
}

class _ListasState extends State<Listas> {
  final List<Personas> _personas = [
    Personas("Jose", "Pazcales", 19),
    Personas("Juan", "Pazcales", 19),
    Personas("Pedro", "Pazcales", 19),
    Personas("Maria", "Pazcales", 19),
    Personas("Jose", "Pazcales", 19),
    Personas("Juan", "Pazcales", 19),
    Personas("Pedro", "Pazcales", 19),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.builder(
              itemCount: _personas.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  onTap: (() => _deletePerson(context, _personas[index])),
                  title: Text(_personas[index].name),
                  subtitle: Text(_personas[index].lastName),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  leading: CircleAvatar(
                      child: Text(_personas[index].name.substring(0, 1))),
                );
              }))),
    );
  }

  _deletePerson(context, Personas persona) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Eliminar Contácto'),
        content: Text('Estás seguro de querer eliminar a ${persona.name}'),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar')),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _personas.remove(persona);
                });
                Navigator.pop(context);
              },
              child: const Text('Eliminar')),
        ],
      ),
    );
  }
}

class Personas {
  String name;
  String lastName;
  int age;

  Personas(this.name, this.lastName, this.age);
}
