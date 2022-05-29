import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  const ImageHeader({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      color: Colors.white10,
      child: CachedNetworkImage(
        // imageUrl: 'https://avatars.dicebear.com/api/personas/${user.name}',
        imageUrl: 'https://robohash.org/$name',
        placeholder: (ctx, text) =>
            const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
