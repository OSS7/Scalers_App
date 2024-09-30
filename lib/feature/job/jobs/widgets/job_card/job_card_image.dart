import 'package:flutter/material.dart';

class JobCardImage extends StatelessWidget {
  const JobCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        "https://i.ibb.co/Y2v3VDP/images.png",
        fit: BoxFit.cover,
        width: size.width * 0.175,
        height: size.height * 0.1,
      ),
    );
  }
}
