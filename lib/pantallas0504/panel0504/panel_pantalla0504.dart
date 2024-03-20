import 'package:flutter/material.dart';
import 'package:meza_uii_act1_0504/pantallas0504/panel0504/widgets0504/item_refacciones0504.dart';

class PanelPantalla0504 extends StatelessWidget {
  const PanelPantalla0504({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffe8c237),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/JorgeMeza123/img_flutterflow_IOS_6J/main/Act12NavBar_Flutterflow/icon.png"),
            ),
          )
        ],
        title: const Text('Meza Refa 0504',
            style: TextStyle(color: Color(0xff000000))),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.8),
                color: const Color(0xffffac2e),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Busca tu pieza",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.white),
                  border: InputBorder.none,
                  prefix: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/JorgeMeza123/img_flutterflow_IOS_6J/main/Act12NavBar_Flutterflow/logo.png"))),
          ),
          ListTile(
            title: const Text("Mejores piezas"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: const Icon(Icons.filter_list_outlined),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [
                for (int i = 1; i <= 10; i++) const Itemrefacciones0504()
              ],
            ),
          )
        ],
      ),
    );
  }
}
