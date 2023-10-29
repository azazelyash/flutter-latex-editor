import 'package:flutter/material.dart';
import 'package:latex_editor/screens/components/shimmer.effects.dart';

class PreviewLoader extends StatelessWidget {
  const PreviewLoader({
    super.key,
    required this.shimmerEffects,
  });

  final ShimmerEffects shimmerEffects;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        shimmerEffects.shimmerText(
          width: MediaQuery.sizeOf(context).width,
          height: 16,
        ),
        const SizedBox(height: 6),
        shimmerEffects.shimmerText(
          width: MediaQuery.sizeOf(context).width,
          height: 16,
        ),
        const SizedBox(height: 6),
        shimmerEffects.shimmerText(
          width: MediaQuery.sizeOf(context).width * 0.4,
          height: 16,
        ),
        const SizedBox(height: 20),
        shimmerEffects.shimmerText(
          width: MediaQuery.sizeOf(context).width,
          height: 16,
        ),
        const SizedBox(height: 6),
        shimmerEffects.shimmerText(
          width: MediaQuery.sizeOf(context).width,
          height: 16,
        ),
        const SizedBox(height: 6),
        shimmerEffects.shimmerText(
          width: MediaQuery.sizeOf(context).width,
          height: 16,
        ),
        const SizedBox(height: 20),
        shimmerEffects.shimmerText(
          width: MediaQuery.sizeOf(context).width,
          height: 16,
        ),
        const SizedBox(height: 6),
        shimmerEffects.shimmerText(
          width: MediaQuery.sizeOf(context).width * 0.4,
          height: 16,
        ),
      ],
    );
  }
}
