import 'package:flutter/material.dart';
import '../components/carro_item.dart';
import '../models/carro.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Carro> favoriteCarros;

  const FavoriteScreen(this.favoriteCarros, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoriteCarros.isEmpty) {
      return const Center(
        child: Text('Nenhum carro foi marcado como favorito'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteCarros.length,
        itemBuilder: (ctx, index) {
          return CarroItem(favoriteCarros[index]);
        },
      );
    }
  }
}
