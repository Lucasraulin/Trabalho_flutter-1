import 'package:flutter/material.dart';
import '../components/main_drawer.dart';
import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  final Settings settings;
  final Function(Settings) onSettingsChanged;

  const SettingsScreen(this.settings, this.onSettingsChanged, {Key? key})
      : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Settings? settings;

  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(settings!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  'Carros Elétricos',
                  'Só exibe carros elétricos',
                  settings!.isEletrico,
                  (value) => setState(() => settings!.isEletrico = value),
                ),
                _createSwitch(
                  'Carros Diesel',
                  'Só exibe carros diesel',
                  settings!.isDiesel,
                  (value) => setState(() => settings!.isDiesel = value),
                ),
                _createSwitch(
                  'Carros a Gasolina',
                  'Só exibe carros a gasolina',
                  settings!.isGasolina,
                  (value) => setState(() => settings!.isGasolina = value),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
