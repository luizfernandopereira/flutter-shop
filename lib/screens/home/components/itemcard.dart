import 'package:flutter/material.dart';
import 'package:fluttershop/constants.dart';
import 'package:fluttershop/models/products.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    required this.product,
    required this.press,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(product.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            products[0].title,
            style: const TextStyle(
              color: kTextLightColor,
            ),
          ),
        ),
        Text(
          "\$${product.price}",
          style: const TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
