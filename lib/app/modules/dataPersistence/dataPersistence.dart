import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataPersistence extends StatefulWidget {
  const DataPersistence({super.key});

  @override
  State<DataPersistence> createState() => _DataPersistenceState();
}

class _DataPersistenceState extends State<DataPersistence> {
  int value = 0;

  @override
  void initState() {
    super.initState();
    _chargePreferences();
  }

  _chargePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      value = prefs.getInt('value') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Persistence'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                value.toString(),
                style: const TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: _plusValue,
              child: Text('Aumentar Valor'),
            )
          ],
        ),
      ),
    );
  }

  _plusValue() async {
    setState(() {
      value++;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setInt('value', value);
  }
}
