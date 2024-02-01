import 'package:flutter/material.dart';
import 'package:untitled11/example/example_widget_model.dart';

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  @override
  State<ExampleWidget> createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  final model = ExampleWidgetModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: ElevatedButton(
              onPressed: model.doSome,
              child: const Text('Жми'),
            ),
          ),
        ),
    );
  }
}
