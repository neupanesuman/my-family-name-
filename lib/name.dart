import 'package:flutter/material.dart';

class NamePage extends StatefulWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Girl Friends"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Silpa"),
          Text("Anita"),
          Text("Neelam"),
          Text("Sabina"),
          Text("Pooja"),
          Text("Sabita"),
          Text("Asmita"),
          Text("etc."),
        ],
      ),
    );
  }
}
