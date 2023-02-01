import 'package:flutter/material.dart';
import 'package:fluttershop/constants.dart';
import 'package:fluttershop/models/products.dart';
import 'package:fluttershop/screens/home/components/categories.dart';

import 'itemcard.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          child: Text(
            "Women",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
              ),
              itemBuilder: (context, index) => ItemCard(product: products[index], press: () {}),
            ),
          ),
        ),
      ],
    );
  }
}
