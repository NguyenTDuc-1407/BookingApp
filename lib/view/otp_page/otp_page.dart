// ignore_for_file: use_key_in_widget_constructors

import 'package:booking/helper/dimensions.dart';
import 'package:booking/utils/app_colors.dart';
import 'package:booking/utils/images_path.dart';
import 'package:booking/view/otp_page/otp_page_controller.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:timer_count_down/timer_count_down.dart';

class OtpPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: OtpController(),
      builder: (controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 235, 232, 232),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(0, 255, 255, 255),
            elevation: 0,
            leadingWidth: MyDimensions.SPACE_SIZE_5X * 4,
            leading: InkWell(
              onTap: () {
                controller.onBack();
              },
              child: Container(
                margin: EdgeInsets.only(
                    left: MyDimensions.SPACE_SIZE_5X,
                    top: MyDimensions.SPACE_SIZE_2X,
                    bottom: MyDimensions.SPACE_SIZE_2X,
                    right: MyDimensions.SPACE_SIZE_5X),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(225, 225, 226, 0.459),
                    borderRadius:
                        BorderRadius.circular(MyDimensions.BORDER_RADIUS_7X)),
                child: const Icon(Icons.arrow_back_sharp, color: Colors.black),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_2X),
                  child: Text(
                    'XÁC THỰC OTP',
                    style: TextStyle(
                        color: AppColors.blackText,
                        fontWeight: FontWeight.w500,
                        fontSize: MyDimensions.FONT_SIZE_H1 * 1.2),
                  ),
                ),
                Container(
                  width: MyDimensions.mySize.width * 0.95,
                  height: MyDimensions.mySize.height * 0.3,
                  margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: MyDimensions.SPACE_SIZE_5X * 1.2,
                            bottom: MyDimensions.SPACE_SIZE_5X * 1.2),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: "Nhập mã OTP đã được gửi về qua số điện\n",
                            style: TextStyle(
                              color: Color.fromRGBO(70, 70, 71, 1),
                            ),
                            children: [
                              TextSpan(
                                text: "thoại của bạn",
                                style: TextStyle(
                                    color: Color.fromRGBO(70, 70, 71, 1)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: MyDimensions.SPACE_SIZE_5X * 3,
                            width: MyDimensions.SPACE_SIZE_5X * 3,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MyDimensions.SPACE_SIZE_5X * 3,
                            width: MyDimensions.SPACE_SIZE_5X * 3,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MyDimensions.SPACE_SIZE_5X * 3,
                            width: MyDimensions.SPACE_SIZE_5X * 3,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MyDimensions.SPACE_SIZE_5X * 3,
                            width: MyDimensions.SPACE_SIZE_5X * 3,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MyDimensions.SPACE_SIZE_5X * 1.5),
                        height: MyDimensions.SPACE_SIZE_5X * 2,
                        width: MyDimensions.mySize.width * 0.8,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.blue,
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    MyDimensions.BORDER_RADIUS_2X),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(0),
                          ),
                          onPressed: () {
                            controller.pageLogin();
                          },
                          child: const Text(
                            'Nhận mã',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MyDimensions.SPACE_SIZE_4X,
                      bottom: MyDimensions.SPACE_SIZE_5X),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Thời gian còn lại: ',
                        style: TextStyle(
                          color: Color.fromRGBO(128, 128, 137, 1),
                        ),
                      ),
                      Countdown(
                        controller: controller.countdownController,
                        seconds: controller.timeStart,
                        build: (p0, double time) => Text(
                          time.toString(),
                          style: const TextStyle(
                            color: Color.fromRGBO(128, 128, 137, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MyDimensions.mySize.width,
                  height: MyDimensions.mySize.height * 0.3,
                  child: Image.asset(
                    ImagesPath.otp,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_4X),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Bạn chưa nhận được mã? ',
                          style: TextStyle(
                            color: Color.fromRGBO(164, 162, 162, 1),
                          )),
                      InkWell(
                        onTap: () {
                          controller.onRestStart();
                        },
                        child: const Text(
                          'Gửi lại',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                         ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
