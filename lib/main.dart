import 'package:flutter/material.dart';
import 'banner/banner_indicator.dart';
import 'banner/banner_widget.dart';
import 'banner_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Banner',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Banner Demo'),
    );
  }
}

///---------------------------------------------------------------------------
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: BannerWidget(
        bannerIndicator: BannerIndicator()
          ..indicatorBottom = 20
          ..containerBottom = 0
          ..indicatorSize = 10
          ..showNumber = false
          ..positionType = BannerIndicator.bottomCenter,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.deepPurple),
          Container(
            color: Colors.orange,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                      return const BannerDemo();
                    }));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: const Text('开始体验'),
                  ),
                ),
                const SizedBox(height: 100)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
