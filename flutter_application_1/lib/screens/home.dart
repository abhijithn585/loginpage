import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        actions: [
          IconButton(
              onPressed: () {
                singout(context);
              },
              icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text("FAV FILM $index"),
                  subtitle: Text("Film Name $index"),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green,
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 10)),
    );
  }

  singout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => ScreenLogin()), (route) => false);
  }
}
