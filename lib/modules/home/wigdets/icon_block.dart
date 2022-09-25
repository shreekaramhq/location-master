import 'package:flutter/material.dart';

class IconBlock extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final Function(IconData color) onTap;

  const IconBlock({Key? key, required this.icon, required this.isSelected, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(icon);
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
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Icon(
            icon,
            color: Colors.black.withOpacity(0.85),
          ),
        ),
      ),
    );
  }
}
