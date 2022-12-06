

import 'package:draw_idea/views/widgets/floatingpopup/popup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../badge/badge.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Container(

        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:
                const EdgeInsets.only(right: 20.0,top: 15),
                child: badge(),
              ),
              // Container(
              //   width: 128.0,
              //   height: 128.0,
              //   margin: const EdgeInsets.only(
              //     top: 24.0,
              //     bottom: 64.0,
              //   ),
              //   clipBehavior: Clip.antiAlias,
              //   decoration: BoxDecoration(
              //     color: Colors.black26,
              //     shape: BoxShape.circle,
              //   ),
              //   child: Image.asset(
              //     'assets/images/flutter_logo.png',
              //   ),
              // ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.home),
                title: Container(child: Row(
                  children: [
                    Text(' home screen'),
                    popnew()
                  ],
                )),
              ),
              Container(
                margin: EdgeInsets.only(left: 70,right: 20),
                width: 200,
                height: 1,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.people),
                title: Text('Recharge for others'),
              ),
              Container(
                margin: EdgeInsets.only(left: 70,right: 20),
                width: 200,
                height: 1,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.paypal_outlined),
                title: Text('Pay bill for others'),
              ),
              Container(
                margin: EdgeInsets.only(left: 70,right: 20),
                width: 200,
                height: 1,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.music_note_sharp),
                title: Text('Music'),
              ),
              Container(
                margin: EdgeInsets.only(left: 70,right: 20),
                width: 200,
                height: 1,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.movie_filter_sharp),
                title: Text('Movies & TV'),
              ),
              Container(
                margin: EdgeInsets.only(left: 70,right: 20),
                width: 200,
                height: 1,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.games),
                title: Row(
                  children: [
                    Text('Games'),
                    popfree()
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 70,right: 20),
                width: 200,
                height: 1,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.star_rate_outlined),
                title: Text('Jobs & Education'),
              ),
              Container(
                margin: EdgeInsets.only(left: 70,right: 20),
                width: 200,
                height: 1,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.music_note_sharp),
                title: Text('Caller Tune'),
              ),
              Container(
                margin: EdgeInsets.only(left: 70,right: 20),
                width: 200,
                height: 1,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.traffic),
                title: Row(
                  children: [
                    Text('Draw'),
                    popoffer()
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 70,right: 20),
                width: 200,
                height: 1,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.flight),
                title: Text('International Draw'),
              ),
              Container(
                margin: EdgeInsets.only(left: 70,right: 20),
                width: 200,
                height: 1,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.delivery_dining),
                title: Text('Home Delivery'),
              ),
              Container(
                margin: EdgeInsets.only(left: 70,right: 20),
                width: 200,
                height: 1,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.language),
                title: Row(
                  children: [
                    Text('Change Language'),
                    popnew()
                  ],
                ),
              ),

              Spacer(),
              Center(
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
