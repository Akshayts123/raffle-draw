import 'package:draw_idea/views/pages/services/widgets/divider.dart';
import 'package:draw_idea/views/pages/services/widgets/featured.dart';
import 'package:draw_idea/views/pages/services/widgets/news_widget.dart';
import 'package:draw_idea/views/pages/services/widgets/service_image_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/home_controller.dart';
import '../../../utils/style.dart';
import '../../widgets/more/more.dart';
import '../Deals/widgets/catogory_heading.dart';
import '../job_portal/widgets/appbar.dart';

class ServicePage extends StatelessWidget {
  final HomeController _coffeeController = Get.find();
  ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 1;
    final double itemWidth = size.width / 0.3;
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            setUserForm(context),
            Container(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Heading(
                          text: "Featured for You",
                        ),
                        more(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Featured_box(
                          "assets/yellow.jpg",
                          "Lorem Ipsum is simply dummy text",
                          "Lorem Ipsum is simply dummy text"),
                      SizedBox(
                        width: 15,
                      ),
                      Featured_box(
                          "assets/blue.png",
                          "Lorem Ipsum is simply dummy text",
                          "Lorem Ipsum is simply dummy text"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Heading(
                          text: "Convenient Life",
                        ),
                        more(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: GridView.builder(
                      itemCount: 10,
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          childAspectRatio: (itemWidth / itemHeight),
                          crossAxisCount:
                              (orientation == Orientation.portrait) ? 2 : 9),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  width: 170,
                                  height: 100,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        child: Image.asset(
                                          _coffeeController.getHomesList[index]
                                                  .services ??
                                              "",
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Container(
                                        child: Text(
                                          _coffeeController.getHomesList[index]
                                                  .servicestext ??
                                              "",
                                          style: context
                                              .theme.textTheme.titleMedium,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          _coffeeController.getHomesList[index]
                                                  .servicestext ??
                                              "",
                                          style: Style.text27,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Heading(
                          text: "Local News",
                        ),
                        more(),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Card(
                      child: Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          height: 350,
                          child: Column(
                            children: [
                              NewsWidget(
                                text:
                                "Lorem Ipsum is simply dummy text of the printing",
                                text2: "Lorem Ipsum is simply dummy",
                                image: "assets/z1.jpg",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              NewsWidget(
                                text:
                                "Lorem Ipsum is simply dummy text of the printing",
                                text2: "Lorem Ipsum is simply dummy",
                                image: "assets/z2.jpg",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              NewsWidget(
                                text:
                                    "Lorem Ipsum is simply dummy text of the printing",
                                text2: "Lorem Ipsum is simply dummy",
                                image: "assets/z3.jpg",
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  Widget setUserForm(context) {
    return Stack(
      children: <Widget>[
        // Background with gradient
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.bottomCenter,
              colors: [
                Style.systemblue,
                Style.systemblue,
              ],
            ),
          ),
          height: 100,
        ),
        //Above card
        Container(
          height: 170,
          child: Card(
            elevation: 10.0,
            margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceImageText(
                        image: "assets/imovie.png", serviceText: "imovie",
                      ),
                      ServiceImageText(
                        image: "assets/imail.png", serviceText: "imovie",
                      ),
                      ServiceImageText(
                        image:  "assets/ibook.png", serviceText: "imovie",
                      ),
                      ServiceImageText(
                        image:  "assets/fitnes.png", serviceText: "imovie",
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        // Positioned to take only AppBar size
        SafeArea(
          child: Container(
            // Background
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Text('SERVICES', style: Style.text41),
            ),
            color: Style.systemblue,
            height: 40,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
