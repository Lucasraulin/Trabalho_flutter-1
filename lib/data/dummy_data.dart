import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/carro.dart';

const dummyCategories = [
  Category(
    id: 'c1',
    title: 'Coupé',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Hatchs',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Sedãs',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Caminhões',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'SUVs',
    color: Colors.indigo,
  ),
  Category(
    id: 'c6',
    title: 'Pickups',
    color: Colors.green,
  ),
];

const dummyCarros = [
  Carro(
    id: 'm1',
    categories: ['c1'],
    title: 'Porsche 911',
    cost: Cost.expensive,
    complexity: Complexity.difficult,
    imageUrl:
        'https://autolivraria.com.br/bc/wp-content/uploads/2018/11/Porsche-911-Carrera-4S-01.jpg',
    descricao: [
      'Portas: 2',
      'Aceleração de 0 a 100 km/h: 2,7 - 4,2 segundos',
      'Volume de carga: 128 - 132 l',
      'Configuração dos cilindros: Motor boxer',
      'Dimensões: 4.519-4.573 mm C x 1.852-1.900 mm L x 1.279-1.322 mm A',
      'Tração: Tração nas quatro rodas, Tração traseira'
    ],
    localizacao: [
      'Curitiba/PR',
    ],
    isEletrico: false,
    isDiesel: false,
    isGasolina: true,
  ),
  Carro(
    id: 'm2',
    categories: ['c2'],
    title: 'Ford Focus',
    cost: Cost.cheap,
    complexity: Complexity.simple,
    imageUrl:
        'https://static.wikia.nocookie.net/pedrofilms-inc/images/7/75/2018_Ford_Focus_ST-Line_X_1.0.jpg/revision/latest?cb=20210615132510&path-prefix=pt-br',
    descricao: [
      'Portas: 2',
      'Aceleração de 0 a 100 km/h: 2,7 - 4,2 segundos',
      'Volume de carga: 128 - 132 l',
      'Configuração dos cilindros: Motor boxer',
      'Dimensões: 4.519-4.573 mm C x 1.852-1.900 mm L x 1.279-1.322 mm A',
      'Tração: Tração nas quatro rodas, Tração traseira'
    ],
    localizacao: [
      'Curitiba/PR',
    ],
    isEletrico: false,
    isDiesel: false,
    isGasolina: true,
  ),
  Carro(
    id: 'm3',
    categories: ['c3'],
    title: 'Honda Civic',
    cost: Cost.fair,
    complexity: Complexity.medium,
    imageUrl:
        'https://quatrorodas.abril.com.br/wp-content/uploads/2021/12/DSCF0337.jpg?quality=70&strip=info',
    descricao: [
      'Portas: 2',
      'Aceleração de 0 a 100 km/h: 2,7 - 4,2 segundos',
      'Volume de carga: 128 - 132 l',
      'Configuração dos cilindros: Motor boxer',
      'Dimensões: 4.519-4.573 mm C x 1.852-1.900 mm L x 1.279-1.322 mm A',
      'Tração: Tração nas quatro rodas, Tração traseira'
    ],
    localizacao: [
      'Curitiba/PR',
    ],
    isEletrico: false,
    isDiesel: false,
    isGasolina: true,
  ),
  Carro(
    id: 'm4',
    categories: ['c4'],
    title: 'volvo globetrotter fh',
    cost: Cost.expensive,
    complexity: Complexity.difficult,
    imageUrl:
        'https://www.volvotrucks.com.br/content/dam/volvo-trucks/markets/master/home/trucks/volvo-fh/volvo-fh-specifications/volvo-fh-specifications-cabs.jpg',
    descricao: [
      'Portas: 2',
      'Aceleração de 0 a 100 km/h: 2,7 - 4,2 segundos',
      'Volume de carga: 128 - 132 l',
      'Configuração dos cilindros: Motor boxer',
      'Dimensões: 4.519-4.573 mm C x 1.852-1.900 mm L x 1.279-1.322 mm A',
      'Tração: Tração nas quatro rodas, Tração traseira'
    ],
    localizacao: [
      'Curitiba/PR',
    ],
    isEletrico: false,
    isDiesel: true,
    isGasolina: true,
  ),
  Carro(
    id: 'm3',
    categories: ['c3'],
    title: 'Tesla Model S',
    cost: Cost.expensive,
    complexity: Complexity.difficult,
    imageUrl:
        'https://quatrorodas.abril.com.br/wp-content/uploads/2022/06/1FLP9149.jpg?quality=70&strip=info',
    descricao: [
      'Portas: 2',
      'Aceleração de 0 a 100 km/h: 2,7 - 4,2 segundos',
      'Volume de carga: 128 - 132 l',
      'Configuração dos cilindros: Motor boxer',
      'Dimensões: 4.519-4.573 mm C x 1.852-1.900 mm L x 1.279-1.322 mm A',
      'Tração: Tração nas quatro rodas, Tração traseira'
    ],
    localizacao: [
      'Curitiba/PR',
    ],
    isEletrico: true,
    isDiesel: false,
    isGasolina: false,
  ),
];
