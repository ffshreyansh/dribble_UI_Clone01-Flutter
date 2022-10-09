import 'package:flutter/material.dart';

class ExcersiseTile extends StatelessWidget {
  final icon;
  final String titleName;
  final String subtitleName;
  final bg_color;

  const ExcersiseTile(
      {super.key,
      this.icon,
      required this.titleName,
      required this.subtitleName,
      this.bg_color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 9),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleName,
                style: TextStyle(color: Colors.black),
              ),
              Icon(Icons.more_horiz),
            ],
          ),
          subtitle: Text(subtitleName),
          leading: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: bg_color, borderRadius: BorderRadius.circular(12)),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
