import 'package:cp_02_flutter/database/app.database.dart';
import 'package:cp_02_flutter/domain/animal.dart';
import 'package:get/get.dart';


class AnimalController extends GetxController {
  final Rx<bool> _status = Rx(false);
  AnimalDatabase animalDatabase = AnimalDatabase.instance;

  AnimalController();

  saveAnimal(Animal value) async {
    await animalDatabase.insert(value);
  }
}