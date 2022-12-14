

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../controller/home_controller.dart';
import '../../../../utils/style.dart';

Widget MusicSlider(){
  final HomeController _coffeeController = Get.find();
  return Container(
    padding:  Pods.TOP_PADDING,
    child: Column(
      children: [
        Container(
          padding:  Pods.LEFT_PADDING,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  "Trending music",
                  style: Style.mainheading,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0.0),
                child: RawMaterialButton(
                  onPressed: () {},
                  constraints: BoxConstraints(),
                  elevation: 0.0,
                  fillColor:Style.whitecolor,
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
        ),
        Container(
          height: 200,
          padding: EdgeInsets.only(top: 10),
          child: ListView.builder(
            padding:  Pods.LEFT_WIDE_PADDING,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: _coffeeController.getHomesList.length,
            itemBuilder: (BuildContext context, int index) =>
                Container(
                  margin: EdgeInsets.only(right:15 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          _coffeeController.getHomesList[index].music??"",
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.only(left: 0),
                        child: Text(
                          "Music",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
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