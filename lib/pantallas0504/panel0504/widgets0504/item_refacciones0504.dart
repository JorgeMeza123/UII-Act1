import 'package:flutter/material.dart';
import 'package:meza_uii_act1_0504/pantallas0504/panel0504/panel_pantalla0504.dart';

class Itemrefacciones0504 extends StatelessWidget {
  const Itemrefacciones0504({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.green,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/JorgeMeza123/img_flutterflow_IOS_6J/main/Act12NavBar_Flutterflow/turbo.jpg"),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Nuestras Piezas",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 5,
          ),
          Row(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      )))
        ],
      ),
    );
  }
}
