import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OrderedItemCard extends StatelessWidget {
  const OrderedItemCard({
    Key key,
    @required this.numOfItem,
    @required this.title,
    @required this.description,
    @required this.price,
  }) : super(key: key);
  final int numOfItem;
  final String title, description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(key),
      background: Container(
        color: Theme.of(context).errorColor,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
      ),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) {
        //returns a Future<bool>
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text("Are you sure?"),
            content: const Text("Do you wan to remove the item from the cart?"),
            actions: [
              FlatButton(
                child: const Text("No"),
                //makes sure we don't continue with dismissing the item
                onPressed: () {
                  //closes the AlertDialog
                  //showDialog returns a Future that resolves
                  // to the vallue we pass to pop
                  //passing a value to pop is optional
                  Navigator.of(ctx).pop(false);
                },
              ),
              FlatButton(
                //goes ahead with dismissin the item
                onPressed: () {
                  Navigator.of(ctx).pop(true);
                },
                child: const Text("Yes"),
              ),
            ],
          ),
        );
      },
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildNumOfItem(),
              const HorizontalSpacing(of: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const VerticalSpacing(of: 5),
                    Text(
                      description,
                      style: kBodyTextStyle.copyWith(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              const HorizontalSpacing(of: 10),
              Text(
                "USD$price",
                // style: kCaptionTextStyle.copyWith(color: kActiveColor),
                style: const TextStyle(color: kActiveColor,),
    
              )
            ],
          ),
          const VerticalSpacing(of: 10),
          const Divider(),
        ],
      ),
    );
  }

  Container buildNumOfItem() {
    return Container(
      height: 24,
      width: 24,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        border:
            Border.all(width: 0.5, color: const Color(0xFF868686).withOpacity(0.3)),
      ),
      child: Text(
        numOfItem.toString(),
        style: kSecondaryBodyTextStyle.copyWith(color: kActiveColor),
      ),
    );
  }
}
