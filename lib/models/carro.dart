enum Complexity {
  simple,
  medium,
  difficult,
}

enum Cost {
  cheap,
  fair,
  expensive,
}

class Carro {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> descricao;
  final List<String> localizacao;
  final bool isEletrico;
  final bool isDiesel;
  final bool isGasolina;
  final Complexity complexity;
  final Cost cost;

  const Carro({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.descricao,
    required this.localizacao,
    required this.isEletrico,
    required this.isDiesel,
    required this.isGasolina,
    required this.complexity,
    required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'Popular';
      case Complexity.medium:
        return 'Extravagante';
      case Complexity.difficult:
        return 'Luxo';
      default:
        return 'Desconhecida';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.cheap:
        return 'Barato';
      case Cost.fair:
        return 'Justo';
      case Cost.expensive:
        return 'Caro';
      default:
        return 'Desconhecido';
    }
  }
}
