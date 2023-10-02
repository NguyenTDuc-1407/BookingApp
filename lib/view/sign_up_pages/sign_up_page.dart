// ignore_for_file: use_key_in_widget_constructors

import 'package:booking/helper/dimensions.dart';
import 'package:booking/utils/app_colors.dart';
import 'package:booking/utils/images_path.dart';
import 'package:booking/view/sign_up_pages/sign_up_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SignUpPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignUpController(),
      builder: (SignUpController controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  height: MyDimensions.mySize.height,
                  width: MyDimensions.mySize.width,
                  child: Image.asset(
                    ImagesPath.BG_login,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X * 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MyDimensions.SPACE_SIZE_5X * 4,
                        width: MyDimensions.SPACE_SIZE_5X * 4,
                        child: Image.asset(
                          ImagesPath.icon_login,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: MyDimensions.SPACE_SIZE_1X),
                        child: RichText(
                          text: TextSpan(
                            text: "Trave",
                            style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H1 * 2,
                                color: AppColors.white),
                            children: [
                              TextSpan(
                                text: "ally",
                                style: TextStyle(
                                    fontSize: MyDimensions.FONT_SIZE_H1 * 2,
                                    color: AppColors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin:
                        EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X * 10),
                    height: MyDimensions.mySize.height * 0.747,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft:
                                Radius.circular(MyDimensions.BORDER_RADIUS_6X),
                            topRight:
                                Radius.circular(MyDimensions.BORDER_RADIUS_6X)),
                        color: AppColors.transparentBorder),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MyDimensions.SPACE_SIZE_5X * 2,
                        ),
                        Center(
                          child: Text(
                            "Welcome!",
                            style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H1 * 2,
                                color: AppColors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MyDimensions.SPACE_SIZE_5X * 2,
                              left: MyDimensions.SPACE_SIZE_5X * 2.2),
                          child: Text(
                            'Email ',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: MyDimensions.FONT_SIZE_SPAN_SMALL),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: MyDimensions.SPACE_SIZE_1X),
                            padding: EdgeInsets.only(
                                left: MyDimensions.ONE_UNIT_SIZE * 9,
                                bottom: MyDimensions.ONE_UNIT_SIZE * 11),
                            width: MyDimensions.mySize.width * 0.8,
                            height: MyDimensions.SPACE_SIZE_5X * 2,
                            decoration: BoxDecoration(
                              color: AppColors.whiteTextFile,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextField(
                              controller: controller.checkInputEmail,
                              style: const TextStyle(color: AppColors.blue),
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MyDimensions.SPACE_SIZE_5X * 2.2,
                              top: MyDimensions.SPACE_SIZE_5X * 1.5),
                          child: Text(
                            'Password ',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: MyDimensions.FONT_SIZE_SPAN_SMALL),
                          ),
                        ),
                        Obx(
                          () => Center(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: MyDimensions.SPACE_SIZE_1X,
                              ),
                              padding: EdgeInsets.only(
                                  left: MyDimensions.ONE_UNIT_SIZE * 9,
                                  bottom: MyDimensions.ONE_UNIT_SIZE * 11),
                              width: MyDimensions.mySize.width * 0.8,
                              height: MyDimensions.SPACE_SIZE_5X * 2,
                              decoration: BoxDecoration(
                                color: AppColors.whiteTextFile,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextField(
                                controller: controller.checkInputPassword,
                                onChanged: (value) =>
                                    controller.actionIconPassword(),
                                obscureText: controller.inputPassword.value,
                                style: const TextStyle(color: AppColors.blue),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Visibility(
                                    visible: controller.iconPassword,
                                    child: IconButton(
                                      onPressed: () {
                                        controller.hideInputPassword();
                                      },
                                      icon: Icon(
                                        controller.inputPassword.value
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MyDimensions.SPACE_SIZE_5X * 2.2,
                              top: MyDimensions.SPACE_SIZE_5X * 1.5),
                          child: Text(
                            'Confirm Password ',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: MyDimensions.FONT_SIZE_SPAN_SMALL),
                          ),
                        ),
                        Obx(
                          () => Center(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: MyDimensions.SPACE_SIZE_1X,
                              ),
                              padding: EdgeInsets.only(
                                  left: MyDimensions.ONE_UNIT_SIZE * 9,
                                  bottom: MyDimensions.ONE_UNIT_SIZE * 11),
                              width: MyDimensions.mySize.width * 0.8,
                              height: MyDimensions.SPACE_SIZE_5X * 2,
                              decoration: BoxDecoration(
                                color: AppColors.whiteTextFile,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                controller: controller.checkInputConfiPass,
                                onChanged: (value) =>
                                    controller.actionIconPassword(),
                                obscureText: controller.inputConfiPass.value,
                                validator: (value) {
                                  if (controller.checkInputPassword.text !=
                                      controller.checkInputConfiPass.text) {
                                    return "Password do not match";
                                  }
                                  return null;
                                },
                                style: const TextStyle(color: AppColors.blue),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Visibility(
                                    visible: controller.iconConfiPass,
                                    child: IconButton(
                                      onPressed: () {
                                        controller.hideInputConfipass();
                                      },
                                      icon: Icon(
                                        controller.inputConfiPass.value
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MyDimensions.SPACE_SIZE_5X * 2.5,
                        ),
                        Center(
                          child: Container(
                            height: MyDimensions.SPACE_SIZE_5X * 2.2,
                            width: MyDimensions.mySize.width * 0.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  MyDimensions.BORDER_RADIUS_4X),
                              color: AppColors.blue,
                            ),
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: MyDimensions.FONT_SIZE_SPAN * 1.2,
                                    color: AppColors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MyDimensions.SPACE_SIZE_5X * 1.4,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: MyDimensions.FONT_SIZE_SPAN),
                            ),
                            SizedBox(
                              width: MyDimensions.SPACE_SIZE_1X,
                            ),
                            InkWell(
                              onTap: () => controller.onLoginPage(),
                              child: Text(
                                "Login In",
                                style: TextStyle(
                                    color: AppColors.blue,
                                    fontSize: MyDimensions.FONT_SIZE_H3),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
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
