import 'package:flutter/material.dart';

import 'banner/banner_indicator.dart';
import 'banner/image_banner.dart';

/// @author：yongfeng
/// @data：2024/8/7 10:06
///
class BannerDemo extends StatefulWidget {
  const BannerDemo({super.key});

  @override
  State<BannerDemo> createState() => _BannerDemoState();
}

class _BannerDemoState extends State<BannerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BannerDemo'),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 200,
            child: ImageBanner(
              autoPlay: true,
              imageList: [
                'https://img1.baidu.com/it/u=3518673092,2032183538&fm=253&fmt=auto&app=138&f=JPEG?w=781&h=500',
                'https://img1.baidu.com/it/u=728576857,3157099301&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=313',
                'https://img0.baidu.com/it/u=2891604792,4085341318&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333',
                'https://img0.baidu.com/it/u=3312603872,2552024421&fm=253&fmt=auto&app=120&f=JPEG?w=972&h=547',
                'https://img1.baidu.com/it/u=328002743,1511633109&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500',
              ],
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            height: 200,
            child: ImageBanner(
              autoPlay: true,
              showNumber: true,
              positionType: BannerIndicator.bottomRight,
              imageList: [
                'https://img0.baidu.com/it/u=2891604792,4085341318&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333',
                'https://img0.baidu.com/it/u=3312603872,2552024421&fm=253&fmt=auto&app=120&f=JPEG?w=972&h=547',
                'https://img1.baidu.com/it/u=3518673092,2032183538&fm=253&fmt=auto&app=138&f=JPEG?w=781&h=500',
                'https://img1.baidu.com/it/u=728576857,3157099301&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=313',
                'https://img1.baidu.com/it/u=328002743,1511633109&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500',
              ],
            ),
          ),
        ],
      ),
    );
  }
}
