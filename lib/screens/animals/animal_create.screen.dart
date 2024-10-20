import 'package:cp_02_flutter/domain/animal.dart';
import 'package:cp_02_flutter/screens/animals/animal_controller.dart';
import 'package:cp_02_flutter/util/snippets.dart';
import 'package:flutter/material.dart';


class AnimalCreateScreen extends StatefulWidget {
  const AnimalCreateScreen({super.key});

  @override
  State<AnimalCreateScreen> createState() => _AnimalCreateScreenState();
}

class _AnimalCreateScreenState extends State<AnimalCreateScreen> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();
  final TextEditingController _racaController = TextEditingController();
  late AnimalController _animalController;

  @override
  void initState() {
    _animalController = AnimalController();
    super.initState();
  }

  _onPressed() {
    final animal = Animal(
        name: _nomeController.text,
        age: _idadeController.text,
        race: _racaController.text
    );
    _animalController.saveAnimal(animal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AAAAAAAAAAAAAAAAAAa"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _nomeController,
              decoration: inputDecoration(label: "Informe nome"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _racaController,
              decoration: inputDecoration(label: "Informe raça"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _idadeController,
              decoration: inputDecoration(label: "Informe idade"),
            ),
          ),
          ElevatedButton(onPressed: _onPressed, child: const Text("Inserir")),
        ],
      ),
    );
  }
}

