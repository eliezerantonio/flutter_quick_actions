import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.favorite_border_outlined),
              title: const Text("Favoritos"),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                context.push("/favorites");
              },
            ),
            ListTile(
              leading: const Icon(Icons.qr_code_2),
              title: const Text("QrCode"),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                context.push("/qrcode");
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_outline_rounded),
              title: const Text("Profile"),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                context.push("/profile");
              },
            ),
          ],
        ));
  }
}
