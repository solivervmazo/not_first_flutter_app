import 'package:flutter/material.dart';
import 'package:not_first_flutter_app/widgets/form_widget.dart';

class RadioButtonWidget extends StatelessWidget {
  const RadioButtonWidget({
    super.key,
    required this.productTypeEnum,
    required this.productType,
    required this.onChanged,
  });

  final ProductTypeEnum? productTypeEnum;
  final ProductTypeEnum productType;
  final void Function(ProductTypeEnum? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<ProductTypeEnum>(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        dense: true,
        tileColor: Colors.deepPurple.shade100,
        activeColor: Colors.deepPurple,
        contentPadding: EdgeInsets.zero,
        value: productType,
        groupValue: productTypeEnum,
        onChanged: onChanged,
        title: Text(
          productType.name,
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
