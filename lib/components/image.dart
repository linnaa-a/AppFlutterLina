import 'package:flutter/material.dart';

class ImageComponents extends StatefulWidget {
  const ImageComponents({super.key, required this.index});
  final String index;
  @override
  State<ImageComponents> createState() => _ImageComponentsState();
}

class _ImageComponentsState extends State<ImageComponents> {
  List<String> images = [
    'https://picsum.photos/300/300?random=1',
    'https://picsum.photos/300/300?random=2',
    'https://picsum.photos/300/300?random=3',
    'https://picsum.photos/300/300?random=4',
    'https://picsum.photos/300/300?random=5',
    'https://picsum.photos/300/300?random=6',
    'https://picsum.photos/300/300?random=7',
    'https://picsum.photos/300/300?random=8',
    'https://picsum.photos/300/300?random=9',
    'https://picsum.photos/300/300?random=10',
  ];
  @override
  Widget build(BuildContext context) {
   return Center(
    child: Image(image: NetworkImage(images[int.parse(widget.index)]))
    );
  }
}