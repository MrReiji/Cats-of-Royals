import 'package:flutter/material.dart';
import 'Grid.dart';
import 'CatPicture.dart';

class CatFrame extends StatelessWidget {
  CatFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Grid(),
        Container(
          child: FloatingActionButton(
            onPressed: () {
              Grid();
            },
            tooltip: 'Refresh',
            child: const Icon(Icons.refresh),
          ),
        ),
      ],
    );
  }
}
