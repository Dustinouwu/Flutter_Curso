
import 'package:curso_flutter_n1/models/pokemon.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiHttp extends StatefulWidget {
  const ApiHttp({super.key});

  @override
  State<ApiHttp> createState() => _ApiHttpState();
}

class _ApiHttpState extends State<ApiHttp> {
  Pokemon? pokemon;
  int _pokemonId = 0;

  @override
  void initState() {
    super.initState();
    getPokemon();
  }

  Future<void> getPokemon() async {
    try {
      _pokemonId++;
      final response =
          await Dio().get("https://pokeapi.co/api/v2/pokemon/$_pokemonId");

      setState(() {
        pokemon = Pokemon.fromJson(response.data);
      });
    } catch (error) {
      // Manejar errores aquí
      print("Error: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ApiHttp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pokemon?.name ?? 'No data'),
            if (pokemon != null) ...[
              Image.network(pokemon!.sprites.frontDefault),
              Image.network(pokemon!.sprites.backDefault),
            ],
            ElevatedButton(
              onPressed: () {
                getPokemon();
              },
              child: const Text('Get Pokemon'),
            )
          ],
        ),
      ),
    );
  }
}
