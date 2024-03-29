
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../utils/style.dart';

class Favourite extends StatelessWidget {
  RxBool  isBluetoothOn = false.obs;
   Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Transform.translate(
        offset: Offset(0, 0),
        child:Obx(() => IconButton(
          splashColor: Colors.transparent ,
          onPressed: () async {
            print(isBluetoothOn);
            //  setState(() {
            isBluetoothOn.value = !isBluetoothOn.value;
            //  });

            print(isBluetoothOn);
          },
          icon: Container(

            width: 25,
            height: 25,
            decoration: BoxDecoration(
                color: context.theme.cardColor,
                borderRadius: BorderRadius.circular(3)
            ),
            child: Icon(
              isBluetoothOn.value ? Icons.favorite : Icons.favorite_border,
              color:Style.systemblue,
              size: 20,
            ),
          ),
        ),
        ),
      ),
    );
  }
}
