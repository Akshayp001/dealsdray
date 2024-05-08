import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  final primaryColor = const Color(0xff4338CA);
  final secondaryColor = const Color(0xff6D28D9);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                  text: "Home",
                  icon: Icons.home,
                  selected: true,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Categories",
                  icon: Icons.category,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Deals",
                  icon: Icons.local_offer,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Cart",
                  icon: Icons.shopping_cart,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Profile",
                  icon: Icons.person,
                  selected: false,
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? primaryColor : Colors.black54,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 14,
              height: .05,
              color: selected ? primaryColor : Colors.black.withOpacity(.75)),
        )
      ],
    );
  }
}
