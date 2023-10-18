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
                TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(126, 234, 255, 180)),
                      onPressed: () => widget.onPressed('1'), child: const Text('1')),
                TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(126, 234, 255, 180)),
                      onPressed: () => widget.onPressed('2'), child: const Text('2')),
                TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(126, 234, 255, 180)),
                      onPressed: () => widget.onPressed('3'), child: const Text('3')),
              ]),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(126, 234, 255, 180)),
                      onPressed: () => widget.onPressed('4'), child: const Text('4')),
                TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(126, 234, 255, 180)),
                      onPressed: () => widget.onPressed('5'), child: const Text('5')),
                TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(126, 234, 255, 180)),
                      onPressed: () => widget.onPressed('6'), child: const Text('6')),
              ]),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(126, 234, 255, 180)),
                      onPressed: () => widget.onPressed('7'), child: const Text('7')),
                TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(126, 234, 255, 180)),
                      onPressed: () => widget.onPressed('8'), child: const Text('8')),
                TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(126, 234, 255, 180)),
                      onPressed: () => widget.onPressed('9'), child: const Text('9')),
              ]),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(126, 234, 255, 180)),
                      onPressed: () => widget.onPressed('0'), child: const Text('0')),
              ])
        ]);
  }
}
