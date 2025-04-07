import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroFastCategories extends StatefulWidget {
  const GroFastCategories({super.key});

  @override
  State<GroFastCategories> createState() => _GroFastCategoriesState();
}

class _GroFastCategoriesState extends State<GroFastCategories> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text('Categories'),
        ),
      );
  }
}
