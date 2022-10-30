import 'package:desing1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class ListTileWidget extends StatelessWidget {
  ListTileWidget({super.key, required this.mapTransaction});
  Map<String, dynamic> mapTransaction;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: HexColor('3A668B'),
      child: ListTile(
        leading: Icon(
          mapTransaction['message'] == 'Received'
              ? Icons.add_circle
              : Icons.remove_circle,
          size: 30,
          color: Colors.white,
        ),
        title: Text(
          mapTransaction['message'],
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
        subtitle: Text(
          '${mapTransaction['money']} ${mapTransaction['sendToUser']}',
          style: const TextStyle(color: Colors.white),
        ),
        trailing: Text(mapTransaction['key'],
            style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
