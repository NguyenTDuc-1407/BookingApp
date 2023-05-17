// ignore_for_file: use_key_in_widget_constructors

import 'package:booking/helper/dimensions.dart';
import 'package:booking/utils/images_path.dart';
import 'package:booking/view/login_page/login_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: LoginController(),
      builder: (LoginController controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
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
                                color: Colors.white),
                            children: [
                              TextSpan(
                                text: "ally",
                                style: TextStyle(
                                    fontSize: MyDimensions.FONT_SIZE_H1 * 2,
                                    color: const Color.fromARGB(
                                        255, 74, 169, 188)),
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
                    height: MyDimensions.mySize.height * 0.76,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            MyDimensions.BORDER_RADIUS_6X),
                        color: const Color.fromRGBO(124, 124, 124, 75)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MyDimensions.SPACE_SIZE_5X * 2,
                        ),
                        Center(
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H1 * 2,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MyDimensions.SPACE_SIZE_5X * 2,
                              left: MyDimensions.SPACE_SIZE_5X * 2.2),
                          child: Text(
                            'Email *',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: MyDimensions.FONT_SIZE_SPAN_SMALL),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: MyDimensions.SPACE_SIZE_1X),
                            padding: EdgeInsets.only(
                                left: MyDimensions.ONE_UNIT_SIZE * 9,
                                bottom: MyDimensions.ONE_UNIT_SIZE * 12),
                            width: MyDimensions.mySize.width * 0.8,
                            height: MyDimensions.SPACE_SIZE_5X * 2,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(246, 246, 247, 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextField(
                              controller: controller.checkInputEmail,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 74, 169, 188)),
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
                            'Password *',
                            style: TextStyle(
                                color: Colors.white,
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
                                  bottom: MyDimensions.ONE_UNIT_SIZE * 12),
                              width: MyDimensions.mySize.width * 0.8,
                              height: MyDimensions.SPACE_SIZE_5X * 2,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(246, 246, 247, 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextField(
                                controller: controller.checkInputPassword,
                                onChanged: (value) =>
                                    controller.actionIconPassword(),
                                obscureText: controller.inputPassword.value,
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 74, 169, 188)),
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
                        SizedBox(
                          height: MyDimensions.SPACE_SIZE_5X * 1.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Obx(
                                  () => InkWell(
                                    onTap: () => controller.actionCheckBox(),
                                    child: Container(
                                      height: MyDimensions.SPACE_SIZE_3X,
                                      width: MyDimensions.SPACE_SIZE_3X,
                                      decoration: BoxDecoration(
                                        color: controller.checkBox.value
                                            ? Colors.white
                                            : const Color.fromARGB(
                                                255, 74, 169, 188),
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: MyDimensions.ONE_UNIT_SIZE * 20,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: MyDimensions.ONE_UNIT_SIZE * 10,
                                ),
                                const Text(
                                  'Remember me',
                                  style: TextStyle(
                                    color: Color.fromRGBO(164, 162, 162, 1),
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Color.fromRGBO(164, 162, 162, 1),
                                ),
                              ),
                              onTap: () {},
                            )
                          ],
                        ),
                        SizedBox(
                          height: MyDimensions.SPACE_SIZE_5X * 4,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () => controller.onNextHomePage(),
                            child: Container(
                              height: MyDimensions.SPACE_SIZE_5X * 2.2,
                              width: MyDimensions.mySize.width * 0.35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    MyDimensions.BORDER_RADIUS_4X),
                                color: const Color.fromARGB(255, 74, 169, 188),
                              ),
                              child: Center(
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                      fontSize:
                                          MyDimensions.FONT_SIZE_SPAN * 1.2,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MyDimensions.SPACE_SIZE_5X,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't Have an account?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MyDimensions.FONT_SIZE_SPAN),
                            ),
                            SizedBox(
                              width: MyDimensions.SPACE_SIZE_1X,
                            ),
                            InkWell(
                              onTap: () => controller.onNextPage(),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 74, 169, 188),
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
