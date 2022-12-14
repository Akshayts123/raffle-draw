
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:flutter/cupertino.dart';

import '../../../../controller/home_controller.dart';
import '../../../../utils/style.dart';

Widget EnjoyGaming(){
  final HomeController _coffeeController = Get.find();
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: Pods.HEADING_PADDING,
              child: Text(
                "Enjoy non-stop gaming",
                style:Style.mainheading,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.0),
              child: RawMaterialButton(
                onPressed: () {},
                constraints: BoxConstraints(),
                elevation: 0.0,
                fillColor: Style.whitecolor,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Style.blackcolor),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.chevron_right,
                    size: 20,
                  ),
                ),
                padding: EdgeInsets.all(0.0),
                shape: CircleBorder(),
              ),
            ),
          ],
        ),
        Container(
          height: 180,
          child: ListView.builder(
            padding: EdgeInsets.only(top: 10,left: 5),
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 9,
            itemBuilder: (BuildContext context, int index) =>
                Container(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: _coffeeController.colors[index],
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                          Positioned(
                            // left: 100,
                            top: -15,
                            bottom: 15,
                            child: Image.asset(
                              _coffeeController.getHomesList[index].game??"",
                              fit: BoxFit.fill,
                            ), // replace your image with Image.assets here
                          ),
                        ],
                      ),
                      Container(
                        child: Text(
                          _coffeeController.getHomesList[index].title??"",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color:Style.blackcolor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          ),
        ),
      ],
    ),
  );
}