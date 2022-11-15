import 'package:flutter/material.dart';
import 'package:not_first_flutter_app/models/product_model.dart';
import 'package:not_first_flutter_app/widgets/detail_widget.dart';
import 'package:not_first_flutter_app/widgets/input_widget.dart';
import 'package:not_first_flutter_app/widgets/radio_button_widget.dart';
import 'package:not_first_flutter_app/widgets/dropdown_widget.dart';
import 'package:not_first_flutter_app/widgets/submit_product_widget.dart';

enum ProductTypeEnum { Downloadable, Deliverable }

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _productNameController = TextEditingController();
  final _productDescriptionController = TextEditingController();
  final _productSizeList = [
    "Small",
    "Medium",
    "Large",
    "XLarge",
  ];

  final _formKey = GlobalKey<FormState>();
  ProductModel productModel = ProductModel();

  ProductTypeEnum? _productTypeEnum;

  bool? _boxChecked = false;
  String _selectedSized = "Small";

  @override
  void dispose() {
    _productNameController.dispose();
    _productDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                InputWidget(
                  controller: _productNameController,
                  hintText: "Product name",
                  icons: Icons.verified_user_outlined,
                ),
                const SizedBox(
                  height: 20,
                ),
                InputWidget(
                  controller: _productDescriptionController,
                  hintText: "Product description",
                  icons: Icons.description_outlined,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    CheckboxListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      tileColor: Colors.deepPurple.shade100,
                      activeColor: Colors.deepPurple,
                      value: _boxChecked,
                      dense: true,
                      title: const Text("Top product"),
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (value) {
                        setState(() {
                          _boxChecked = value;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    RadioButtonWidget(
                      productType: ProductTypeEnum.Deliverable,
                      onChanged: (value) {
                        setState(() {
                          _productTypeEnum = value;
                        });
                      },
                      productTypeEnum: _productTypeEnum,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    RadioButtonWidget(
                      productType: ProductTypeEnum.Downloadable,
                      onChanged: (value) {
                        setState(() {
                          _productTypeEnum = value;
                        });
                      },
                      productTypeEnum: _productTypeEnum,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                DropdownWidget(
                  items: _productSizeList,
                  onChanged: (value) {
                    setState(() {
                      _selectedSized = value;
                    });
                  },
                  value: _selectedSized,
                ),
                const SizedBox(
                  height: 20,
                ),
                SubmitProductWidget(
                  onPress: () {
                    if (_formKey.currentState!.validate()) {
                      productModel.productName = _productNameController.text;
                      productModel.productDetails =
                          _productDescriptionController.text;
                      productModel.isTopProduct = _boxChecked!;
                      productModel.productType = _productTypeEnum!;
                      productModel.productSize = _selectedSized;
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(
                      //     content: Text(
                      //       "Processing data",
                      //     ),
                      //   ),
                      // );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailWidget(
                              product: productModel,
                            );
                          },
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
