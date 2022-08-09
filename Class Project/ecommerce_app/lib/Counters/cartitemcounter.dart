// ignore_for_file: prefer_final_fields, unused_field

import 'package:ecommerce_app/Config/config.dart';
import 'package:flutter/foundation.dart';

class CartItemCounter extends ChangeNotifier {
  int get count =>
      EcommerceApp.sharedPreferences!
          .getStringList(EcommerceApp.userCartList)!
          .length -
      1;
}
