import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../arre_routing/routing.dart';
import '../../providers/explore_providers/explore_hashtag_posts_provider.dart';
import '../../styles/styles.dart';
import '../../widgets/arre_network_image.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ExploreBannerSection extends ConsumerWidget {
  final EdgeInsets padding;

  ExploreBannerSection({
    this.padding = const EdgeInsets.symmetric(vertical: 12),
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exploreDynamicCardsPvd = ref.watch(exploreDynamicCardsProvider);

    return exploreDynamicCardsPvd.when(
      loading: () {
        return Container(
          height: 200.0,
          margin: padding,
          decoration: BoxDecoration(
            color: AColors.BgLight,
            borderRadius: BorderRadius.circular(15.0),
          ),
        );
      },
      error: (error, stackTrace) => SizedBox(),
      data: (data) {
        if (data.isNotEmpty) {
          return Padding(
            padding: padding,
            child: BannerSection(items: data),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}

class BannerSection extends ConsumerStatefulWidget {
  final List items;

  const BannerSection({required this.items});

  @override
  _BannerSectionState createState() => _BannerSectionState();
}

class _BannerSectionState extends ConsumerState<BannerSection> {
  int _currentSlide = 0;
  bool autoPlay = false;
  bool enableAutoPlay = true;

  @override
  Widget build(BuildContext context) {
    Widget child = CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: true,
        autoPlay: autoPlay,
        pauseAutoPlayOnManualNavigate: true,
        autoPlayInterval: Duration(seconds: 6),
        viewportFraction: 1.0,
        aspectRatio: 398 / 150, //The image aspect ratio will be 358/150, 40pixels goes in the padding
        onPageChanged: (index, reason) {
          setState(() {
            _currentSlide = index;
            if (reason == CarouselPageChangedReason.manual) {
              enableAutoPlay = false;
            }
          });
        },
      ),
      items: widget.items.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                if (item.redirectionUrl != null) {
                  ArreNavigator.instance.pushRouteLocation(item.redirectionUrl);
                }
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20.0),

                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: AspectRatio(
                  aspectRatio: 358 / 150,
                  child: ArreNetworkImage.mediaId(item.mediaId),
                ),
              ),
            );
          },
        );
      }).toList(),
    );

    if (enableAutoPlay) {
      child = VisibilityDetector(
        key: ValueKey("banner_section"),
        onVisibilityChanged: (info) {
          if (!mounted) return;
          if (info.visibleFraction >= 0.9 && !autoPlay) {
            setState(() {
              autoPlay = true;
            });
          } else if (autoPlay) {
            setState(() {
              autoPlay = false;
            });
          }
        },
        child: child,
      );
    }
    return Stack(
      children: [
        child,
        if (widget.items.length > 1)
          Positioned(
            bottom: 10.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.items.map((item) {
                int index = widget.items.indexOf(item);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentSlide == index
                        ? Colors.white
                        : Color(0xFF272727).withOpacity(0.4),
                  ),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}
