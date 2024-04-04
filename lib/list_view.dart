import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: const Text("big burger on a wooden table with pepper"),
          onTap: () {},
          leading: const Icon(Icons.food_bank),
          trailing: const Icon(Icons.menu),
        ),
        ListTile(
          title: const Text("Hawaiian Chicken PizzaSmoked"),
          onTap: () {},
          leading: const Icon(Icons.food_bank),
          trailing: const Icon(Icons.menu),
        ),
        ListTile(
          title: const Text("Avocado and Egg Toast"),
          onTap: () {},
          leading: const Icon(Icons.food_bank),
          trailing: const Icon(Icons.menu),
        ),
        ListTile(
          title: const Text("Meal with salmon and zucchini"),
          onTap: () {},
          leading: const Icon(Icons.food_bank),
          trailing: const Icon(Icons.menu),
        ),
        ListTile(
          title: const Text("Vegan salad bowl"),
          onTap: () {},
          leading: const Icon(Icons.food_bank),
          trailing: const Icon(Icons.menu),
        ),
        ListTile(
          title: const Text("Homemade Burger"),
          onTap: () {},
          leading: const Icon(Icons.food_bank),
          trailing: const Icon(Icons.menu),
        ),
        ListTile(
          title: const Text("I scream You Scream"),
          onTap: () {},
          leading: const Icon(Icons.food_bank),
          trailing: const Icon(Icons.menu),
        ),
      ],
    );
  }
}
