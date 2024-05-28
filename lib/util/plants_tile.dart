import 'package:flutter/material.dart';

class PlantsTile extends StatelessWidget {
  const PlantsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      
      leading: Icon(Icons.energy_savings_leaf),
      title: Text('Cactus'),
      trailing: Icon(Icons.back_hand),
       

    );
  }
}