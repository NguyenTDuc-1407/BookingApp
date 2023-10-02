// ignore_for_file: use_key_in_widget_constructors

import 'package:booking/helper/dimensions.dart';
import 'package:booking/utils/app_colors.dart';
import 'package:booking/utils/images_path.dart';
import 'package:booking/view/forget_password_page/forgot_password_controller.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ForgotPasswordPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ForgotPasswoeController(),
      builder: (controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: AppColors.greybackground,
          appBar: AppBar(
            backgroundColor: AppColors.greybackground,
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
                    borderRadius:
                        BorderRadius.circular(MyDimensions.BORDER_RADIUS_7X)),
                child:
                    const Icon(Icons.arrow_back_sharp, color: AppColors.black),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_3X),
                  child: Image.asset(
                    ImagesPath.forget_pass,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X * 3.45),
                  width: MyDimensions.mySize.width,
                  height: MyDimensions.mySize.height * 0.45,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(MyDimensions.BORDER_RADIUS_7X * 2),
                        topRight:
                            Radius.circular(MyDimensions.BORDER_RADIUS_7X * 2)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: MyDimensions.SPACE_SIZE_5X,
                          bottom: MyDimensions.SPACE_SIZE_5X,
                        ),
                        child: Text(
                          'Quên mật khẩu',
                          style: TextStyle(
                            fontSize: MyDimensions.FONT_SIZE_H4,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        width: MyDimensions.mySize.width,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: AppColors.blue),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X),
                        child: const Text(
                          'Nhập số điện thoại đã đăng ký của bạn vào bên dưới',
                          style: TextStyle(
                            color: AppColors.blackText,
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X),
                        padding:
                            EdgeInsets.only(left: MyDimensions.SPACE_SIZE_1X),
                        width: MyDimensions.mySize.width * 0.8,
                        height: MyDimensions.SPACE_SIZE_5X * 2,
                        decoration: BoxDecoration(
                          color: AppColors.whiteTextFile,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const TextField(
                          style: TextStyle(color: AppColors.blue),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.phone),
                            hintText: 'So dien thoai',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MyDimensions.SPACE_SIZE_4X,
                            bottom: MyDimensions.SPACE_SIZE_5X * 3),
                        width: MyDimensions.mySize.width * 0.8,
                        height: MyDimensions.SPACE_SIZE_5X * 2,
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
                            controller.otpPage();
                          },
                          child: const Text(
                            'Nhận mã',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Nhớ mật khẩu?',
                            style: TextStyle(
                              color: AppColors.greyText,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: MyDimensions.SPACE_SIZE_1X),
                            child: const Text(
                              'Đăng nhập',
                              style: TextStyle(
                                color: AppColors.blackText,
                              ),
                            ),
                          ),
                        ],
                      )
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
