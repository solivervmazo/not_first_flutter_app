import 'package:flutter/material.dart';

enum ChipStyleEnum { highlight, tag }

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.label,
    this.size = 1.0,
    this.chipStyle = ChipStyleEnum.highlight,
  });

  final String label;
  final double size;
  final ChipStyleEnum chipStyle;

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.centerLeft,
      transform: Matrix4.identity()..scale(size),
      child: chipStyle == ChipStyleEnum.highlight
          ? Chip(
              padding: EdgeInsets.zero,
              label: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.deepPurple,
            )
          : Chip(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              side: BorderSide(
                width: 1.0,
                color: Colors.grey.shade500,
              ),
              backgroundColor: Colors.transparent,
              label: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.deepPurple.shade400,
                ),
              ),
            ),
    );
  }
}
