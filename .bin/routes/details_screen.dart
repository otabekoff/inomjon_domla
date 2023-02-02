import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  static const routeName = '/details-page';

  const DetailsPage({super.key});

  // final String newsTitle;

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final title = args['title'];
    final description = args['description'];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details page"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(title!),
            Text(description!),
          ],
        ),
      ),
    );
  }
}
