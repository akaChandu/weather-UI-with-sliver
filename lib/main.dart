import 'package:flutter/material.dart';

import 'package:weather_repo/widgets/weekly_forecast_list.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      scrollBehavior: const ConstantScrollBehavior(),
      title: 'Horizons',
      home: Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            pinned: true,
            // snap: true,
            // floating: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text('Horizons'),
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: <Color>[
                      Colors.green,
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Image.network(
                  'https://media.istockphoto.com/photos/longs-peak-at-bear-lake-longs-peak-and-glacier-gorge-reflecting-in-picture-id1043959780?k=20&m=1043959780&s=612x612&w=0&h=RkdkNJsHh2QgDX6L65rbU8SdIkQP_5rXwfZQ2-bXtiA=',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const WeeklyForecastList(),
        ]),
      ),
    );
  }
}

class ConstantScrollBehavior extends ScrollBehavior {
  const ConstantScrollBehavior();

  @override
  Widget buildScrollbar(
      BuildContext context, Widget child, ScrollableDetails details) {
    child;
    return super.buildScrollbar(context, child, details);
  }

  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    child;
    return super.buildOverscrollIndicator(context, child, details);
  }

  @override
  TargetPlatform getPlatform(BuildContext context) {
    TargetPlatform.macOS;
    return super.getPlatform(context);
  }

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    const BouncingScrollPhysics(
      parent: AlwaysScrollableScrollPhysics(),
    );
    return super.getScrollPhysics(context);
  }
}
