import 'package:flutter/material.dart';
import 'package:meza_uii_act1_0504/pantallas0504/panel0504/panel_pantalla0504.dart';

void main() => runApp(MiAppRefa());

class MiAppRefa extends StatelessWidget {
  const MiAppRefa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meza Refaccionaria 0504",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          useMaterial3: true),
      home: PanelPantalla0504(),
    );
  }
}
