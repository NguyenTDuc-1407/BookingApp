// ignore_for_file: file_names

import 'package:booking/helper/dimensions.dart';
import 'package:booking/view/main_pages/profile/Postss/Postss_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostssPage extends StatefulWidget {
  const PostssPage({super.key});

  @override
  State<PostssPage> createState() => _PostssPageState();
}

class _PostssPageState extends State<PostssPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: PostssController(),
      builder: (PostssController controller) => Scaffold(
        body: Container(
          margin: EdgeInsets.only(
              top: MyDimensions.SPACE_SIZE_1X * 0.5,
              left: MyDimensions.SPACE_SIZE_2X,
              right: MyDimensions.SPACE_SIZE_2X),
          child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: MyDimensions.SPACE_SIZE_1X,
                mainAxisSpacing: MyDimensions.SPACE_SIZE_1X),
            children: [
              ...List.generate(
                controller.imageList.length,
                (index) => Image.asset(controller.imageList[index]["image"]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
