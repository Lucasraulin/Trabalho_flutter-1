import 'package:flutter/material.dart';
import 'screens/tabs_screen.dart';
import 'screens/categories_carro_screen.dart';
import 'screens/carro_detail_screen.dart';
import 'screens/settings_screen.dart';
import 'utils/app_routes.dart';
import 'models/carro.dart';
import 'models/settings.dart';
import 'data/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Settings settings = Settings();
  List<Carro> _availableCarros = dummyCarros;
  final List<Carro> _favoriteCarros = [];

  void _filterCarros(Settings settings) {
    setState(() {
      this.settings = settings;
      _availableCarros = dummyCarros.where((carro) {
        final filterEletrico = settings.isEletrico && !carro.isEletrico;
        final filterDisel = settings.isDiesel && !carro.isDiesel;
        final filterGasolina = settings.isGasolina && !carro.isGasolina;
        return !filterEletrico && !filterDisel && !filterGasolina;
      }).toList();
    });
  }

  void _toggleFavorite(Carro carro) {
    setState(() {
      _favoriteCarros.contains(carro)
          ? _favoriteCarros.remove(carro)
          : _favoriteCarros.add(carro);
    });
  }

  bool _isFavorite(Carro carro) {
    return _favoriteCarros.contains(carro);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AutoShop Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          secondary: Colors.amber,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                  fontSize: 30,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold),
            ),
      ),
      routes: {
        AppRoutes.home: (ctx) => TabsScreen(_favoriteCarros),
        AppRoutes.categoriesCarros: (ctx) =>
            CategoriesCarrosScreen(_availableCarros),
        AppRoutes.carroDetail: (ctx) =>
            CarroDetailScreen(_toggleFavorite, _isFavorite),
        AppRoutes.settings: (ctx) => SettingsScreen(settings, _filterCarros),
      },
    );
  }
}
