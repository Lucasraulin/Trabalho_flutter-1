import 'package:flutter/material.dart';
import '../models/carro.dart';

class CarroDetailScreen extends StatelessWidget {
  final Function(Carro) onToggleFavorite;
  final bool Function(Carro) isFavorite;

  const CarroDetailScreen(this.onToggleFavorite, this.isFavorite, {Key? key})
      : super(key: key);

  Widget _createSectionTitle(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget _createSectionContainer(Widget child) {
    return Container(
      width: 330,
      height: 200,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final carro = ModalRoute.of(context)!.settings.arguments as Carro;

    return Scaffold(
      appBar: AppBar(
        title: Text(carro.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                carro.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            _createSectionTitle(context, 'Descricao'),
            _createSectionContainer(
              ListView.builder(
                itemCount: carro.descricao.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(carro.descricao[index]),
                    ),
                  );
                },
              ),
            ),
            _createSectionTitle(context, 'Localizacao'),
            _createSectionContainer(ListView.builder(
              itemCount: carro.localizacao.length,
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(carro.localizacao[index]),
                    ),
                    const Divider(),
                  ],
                );
              },
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isFavorite(carro) ? Icons.star : Icons.star_border),
        onPressed: () {
          onToggleFavorite(carro);
        },
      ),
    );
  }
}
