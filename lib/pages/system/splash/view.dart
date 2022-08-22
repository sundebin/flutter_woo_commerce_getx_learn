import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  // 主视图
  // Widget _buildView() {
  //   return const Center(
  //     child: Text("SplashPage"),
  //   );
  // }

  // 主视图
  Widget _buildView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // 文字标题1
        GetBuilder<SplashController>(
          id: "splash_title2",
          builder: (_) {
            return Center(
              child: Text(controller.title),
            );
          },
        ),

        // 文字标题2
        GetBuilder<SplashController>(
          id: "splash_title1",
          builder: (_) {
            return Center(
              child: Text(controller.title),
            );
          },
        ),

        // 按钮
        ElevatedButton(
          onPressed: () {
            controller.onTap(DateTime.now().microsecondsSinceEpoch);
          },
          child: const Text("立刻点击"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("splash"),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Get.back(); // Get.offNamed("/splash")这种方式调整过来的，返回无效
                // Get.offNamed("/");
              },
            ),
          ),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
