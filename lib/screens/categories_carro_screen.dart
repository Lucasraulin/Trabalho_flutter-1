import 'package:flutter/material.dart';
import '../components/carro_item.dart';
import '../models/category.dart';
import '../models/carro.dart';

class CategoriesCarrosScreen extends StatelessWidget {
  final List<Carro> carros;

  const CategoriesCarrosScreen(this.carros, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryCarros = carros.where((carro) {
      return carro.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryCarros.length,
        itemBuilder: (ctx, index) {
          return CarroItem(categoryCarros[index]);
        },
      ),
    );
  }
}
