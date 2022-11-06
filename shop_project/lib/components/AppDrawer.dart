import 'package:flutter/material.dart';
import 'package:shop_project/screens/OrdersScreen.dart';
import 'package:shop_project/screens/UserProductsScreen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        AppBar(
          title: const Text("Hello Friend!"),
          automaticallyImplyLeading: false,
        ),
        const Divider(),
        ListTile(
            leading: const Icon(Icons.shop),
            title: const Text("Shop!"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            }),
        const Divider(),
        ListTile(
            leading: const Icon(Icons.payment),
            title: const Text("Payment!"),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            }),
        const Divider(),
        ListTile(
            leading: const Icon(Icons.edit),
            title: const Text("Manage Products!"),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UserProductsScreen.routeName);
            }),
      ],
    ));
  }
}