import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
    required this.circleAnimation,
    required this.logoOpacity,
    required this.logoScale,
  });

  final Animation<double> circleAnimation;
  final Animation<double> logoOpacity;
  final Animation<double> logoScale;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: circleAnimation,
        builder: (_, _) {
          return Transform.scale(
            scale: circleAnimation.value,
            child: Stack(
              children: [
                Container(
                  width: 240,
                  height: 240,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(AppAssets.assetImagesShape),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  child: FadeTransition(
                    opacity: logoOpacity,
                    child: ScaleTransition(
                      scale: logoScale,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.assetImagesLogoHeight,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
