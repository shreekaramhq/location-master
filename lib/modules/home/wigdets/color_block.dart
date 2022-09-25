import 'package:flutter/material.dart';

class ColorBlock extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final Function(Color color) onTap;

  const ColorBlock({Key? key, required this.color, required this.onTap, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(color);
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
          border: isSelected ? Border.all(width: 2, color: Colors.blue) : null,
        ),
        child: Container(
          margin: const EdgeInsets.all(2),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: color,
          ),
        ),
      ),
    );
  }
}
