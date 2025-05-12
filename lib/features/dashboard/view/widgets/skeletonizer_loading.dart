import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/widgets/build_app_bar.dart';

class SkeletonizerExample extends StatelessWidget {
  const SkeletonizerExample({super.key});
  static const routeName = 'skeletonizer_example';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }
}
