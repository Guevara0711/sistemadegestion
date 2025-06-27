import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      child: Scaffold(
        body: Container(),
        bottomNavigationBar: FBottomNavigationBar(
          index: index,
          onChange: (value) => setState(() => index = value),
          children: [
            FBottomNavigationBarItem(
              icon: Icon(FIcons.house),
              label: const Text('Dashboard'),
            ),
            FBottomNavigationBarItem(
              icon: Icon(FIcons.bell),
              label: const Text('Alertas'),
            ),
            FBottomNavigationBarItem(
              icon: Icon(FIcons.search),
              label: const Text('Consulta'),
            ),
            FBottomNavigationBarItem(
              icon: Icon(FIcons.cog),
              label: const Text('Configuración'),
            ),
          ],
        ),
      ),
    );
  }
}