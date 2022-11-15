import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    super.key,
    required this.items,
    required this.onChanged,
    required this.value,
  });

  final String value;
  final List<String> items;
  final void Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      dropdownColor: Colors.deepPurple.shade50,
      decoration: const InputDecoration(
        labelText: "Prodcut size",
        prefixIcon: Icon(
          Icons.accessibility_new_rounded,
          color: Colors.deepPurple,
        ),
        border: UnderlineInputBorder(),
        labelStyle: TextStyle(
          fontSize: 15.0,
        ),
      ),
      icon: const Icon(
        Icons.arrow_drop_down_circle,
        color: Colors.deepPurple,
      ),
      onChanged: (value) => onChanged(value),
      items: items.map<DropdownMenuItem>(
        (item) {
          return DropdownMenuItem(
            value: item,
            child: Text(item),
          );
        },
      ).toList(),
      value: value,
    );
  }
}
