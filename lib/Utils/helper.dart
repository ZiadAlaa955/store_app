import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Utils/app_routes.dart';

List<Widget> buildAppBarIconButtons(BuildContext context) {
  return [
    IconButton(
      onPressed: () {
        GoRouter.of(context).push(addProduct);
      },
      icon: const Icon(Icons.add, color: Colors.black),
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(FontAwesomeIcons.cartShopping, color: Colors.black),
    ),
  ];
}

void showSnakBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(content)),
  );
}

OutlineInputBorder outlineBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.black),
  );
}
