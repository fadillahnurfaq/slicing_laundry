import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ValueBuilder<T> extends StatelessWidget {
  final ValueListenable<T> listen;
  final Function(T value) builder;
  const ValueBuilder({Key? key, required this.listen, required this.builder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<T>(
      valueListenable: listen,
      builder: (_, v, __) {
        return builder(v);
      },
    );
  }
}
