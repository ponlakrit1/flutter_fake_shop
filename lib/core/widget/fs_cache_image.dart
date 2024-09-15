import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class ImageCacheWidget extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final int? memCache;
  final String? errorImage;

  const ImageCacheWidget({
    super.key,
    required this.imageUrl,
    required this.height,
    required this.width,
    this.memCache,
    this.errorImage,
  });

  @override
  Widget build(BuildContext context) {
    const cacheKey = 'courseImage';

    final imageCacheWidth =
        (memCache ?? 200) * MediaQuery.of(context).devicePixelRatio.round();

    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      height: height,
      width: width,
      memCacheWidth: imageCacheWidth,
      cacheManager: CacheManager(
        Config(
          cacheKey,
          stalePeriod: const Duration(days: 7),
        ),
      ),
      errorWidget: (context, url, error) {
        return Image.asset(
          errorImage ?? 'assets/images/default_image.png',
          fit: BoxFit.cover,
        );
      },
    );
  }
}
