import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  late final List<Widget> _pages;

  selectedIndex(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  void initState() {
    super.initState();
    // Inicialize outras variáveis aqui se necessário
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Inicialize a lista _pages dentro de didChangeDependencies
    _pages = [
      Center(child: Text(AppLocalizations.of(context)!.home)),
      Center(child: Text(AppLocalizations.of(context)!.notes)),
      Center(child: Text(AppLocalizations.of(context)!.new_note)),
      Center(child: Text(AppLocalizations.of(context)!.folder)),
      Center(child: Text(AppLocalizations.of(context)!.settings)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FNotes'),
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: selectedIndex,
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.note),
                label: Text('Notes'),
              ),
              // New Note
              NavigationRailDestination(
                icon: Icon(Icons.note_add),
                label: Text('New Note'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.folder),
                label: Text('Folder'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              ),
            ],
          ),
          // VerticalDivider(thickness: 1, width: 1),
          Expanded(child: _pages[_selectedIndex]),
        ],
      ),
    );
  }
}
