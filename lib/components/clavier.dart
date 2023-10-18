import 'package:flutter/material.dart';

class ClavierComponent extends StatefulWidget {

  final void Function(String) onPressed;

  const ClavierComponent({super.key, required this.onPressed});

  @override
  State<ClavierComponent> createState() => _ClavierComponentState();
}

class _ClavierComponentState extends State<ClavierComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () => widget.onPressed('1'), child: Text('1')),
                TextButton(onPressed: () => widget.onPressed('2'), child: Text('2')),
                TextButton(onPressed: () => widget.onPressed('3'), child: Text('3')),
              ]),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () => widget.onPressed('4'), child: Text('4')),
                TextButton(onPressed: () => widget.onPressed('5'), child: Text('5')),
                TextButton(onPressed: () => widget.onPressed('6'), child: Text('6')),
              ]),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () => widget.onPressed('7'), child: Text('7')),
                TextButton(onPressed: () => widget.onPressed('8'), child: Text('8')),
                TextButton(onPressed: () => widget.onPressed('9'), child: Text('9')),
              ]),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () => widget.onPressed('0'), child: Text('0')),
              ])
        ]);
  }
}
