import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/buttons/primary_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'order_item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            const VerticalSpacing(),
            // List of cart items
            ...List.generate(
              demoItems.length,
              (index) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: OrderedItemCard(
                  title: demoItems[index]["title"],
                  description: "Lorem ipsium blablabla bla",
                  numOfItem: demoItems[index]["numOfItem"],
                  price: demoItems[index]["price"].toDouble(),
                ),
              ),
            ),
            buildPriceRow(text: "Subtotal", price: 47.8),
            const VerticalSpacing(of: 10),
            buildTotal(price: 20),
            const VerticalSpacing(of: 40),
            PrimaryButton(
              text: "Checkout (\$04.10)",
              press: () {
                //Navigate to checkout page contains methods of payment
              },
            ),
          ],
        ),
      ),
    );
  }

  Row buildTotal({@required double price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            text: "Total ",
            style: kBodyTextStyle.copyWith(
                color: kMainColor, fontWeight: FontWeight.w500),
            children: const [
              TextSpan(
                text: "(incl. VAT)",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        Text(
          "\$$price",
          style: kBodyTextStyle.copyWith(
              color: kMainColor, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Row buildPriceRow({@required String text, @required double price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: kBodyTextStyle.copyWith(color: kMainColor),
        ),
        Text(
          "\$$price",
          style: kBodyTextStyle.copyWith(color: kMainColor),
        )
      ],
    );
  }
}

const List<Map> demoItems = [
  {
    "title": "Sushi Plate",
    "price": 21.2,
    "numOfItem": 1,
  },
  {
    "title": "Tokyo Sushi",
    "price": 18,
    "numOfItem": 1,
  },
  {
    "title": "Eby Fry",
    "price": 8.6,
    "numOfItem": 2,
  },
];
