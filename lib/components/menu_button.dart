import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    required this.title,
    required this.icon,
    super.key,
  });

  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey,
      ),
      label: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      onPressed: () {
        // ignore: avoid_print
        print("o botao $title foi clicado!");
      },
    );
  }
}
