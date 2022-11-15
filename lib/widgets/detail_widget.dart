import 'package:flutter/material.dart';
import 'package:not_first_flutter_app/models/product_model.dart';
import 'package:not_first_flutter_app/widgets/chip_widget.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.productName.toUpperCase(),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              isThreeLine: true,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.0,
                  color: Colors.grey.shade300,
                ),
              ),
              leading: const Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.deepPurple,
              ),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    product.productName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  product.isTopProduct
                      ? const ChipWidget(
                          label: "Top product",
                          size: 0.7,
                        )
                      : const Text(""),
                ],
              ),
              // subtitle: Text(product.productDetails),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(product.productDetails),
                  Row(
                    children: [
                      ChipWidget(
                        label: product.productSize,
                        size: 0.9,
                        chipStyle: ChipStyleEnum.tag,
                      ),
                      ChipWidget(
                        label: product.productType.name,
                        size: 0.9,
                        chipStyle: ChipStyleEnum.tag,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
