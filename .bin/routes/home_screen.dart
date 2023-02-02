import 'package:flutter/material.dart';
import 'package:inomjon_domla/details_screen.dart';
// import 'package:inomjon_domla/details_screen.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  void openDetailsPage(BuildContext ctx, String title) {
    // Navigator.push(
    //   ctx,
    //   MaterialPageRoute(
    //     builder: (context) {
    //       return DetailsPage(
    //         newsTitle: title,
    //       );
    //     },
    //   ),
    // );
    Navigator.pushNamed(ctx, DetailsPage.routeName,
        arguments: {'title': title, 'description': 'Hello world desc'});
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              openDetailsPage(context, '1st info page here');
            },
            child: const Text('Click for more details'),
          ),
          ElevatedButton(
            onPressed: () {
              openDetailsPage(context, '2nd info page here');
            },
            child: const Text('Click for more details 2'),
          )
        ],
      ),
    );
  }
}
