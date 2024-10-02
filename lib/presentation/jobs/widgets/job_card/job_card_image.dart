import 'package:flutter/material.dart';

class JobCardImage extends StatelessWidget {
  final String? url;
  const JobCardImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Hero(
      tag: url ?? 'image_tag',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          url ?? '',
          fit: BoxFit.cover,
          width: size.width * 0.175,
          height: size.height * 0.09,
        ),
      ),
    );
  }
}
